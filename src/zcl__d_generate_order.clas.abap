class ZCL__D_GENERATE_ORDER definition
  public
  inheriting from /BOBF/CL_LIB_D_SUPERCL_SIMPLE
  final
  create public .

public section.

  methods /BOBF/IF_FRW_DETERMINATION~EXECUTE
    redefinition .
protected section.
private section.
ENDCLASS.



CLASS ZCL__D_GENERATE_ORDER IMPLEMENTATION.


  method /BOBF/IF_FRW_DETERMINATION~EXECUTE.
*      WITH +both AS ( SELECT workorder FROM zwork_orders   "active data
*        UNION ALL
*        SELECT workorder  FROM zdwork_orders )          "draft data
    SELECT SINGLE
        FROM zwork_order_123
        FIELDS MAX( workorder ) AS workorder
        INTO @DATA(lv_max_workorder).

    "If there are no entries, set a start value
    IF lv_max_workorder IS INITIAL.
        lv_max_workorder = '10000'.
    ENDIF.

    "Read data with the given keys
    DATA lt_data type ztitp_work_order8.

    io_read->retrieve(
        EXPORTING
            iv_node                 = is_ctx-node_key   " uuid of node name
            it_key                  = it_key            " keys given to the determination
        IMPORTING
            eo_message              = eo_message        " pass message object
            et_data                 = lt_data           " itab with node data
            et_failed_key           = et_failed_key     " pass failures
    ).


    "Assign numbers to each newly created line and tell BOPF about the modification
    LOOP AT lt_data REFERENCE INTO DATA(lr_data).
      IF lr_data->workorder IS INITIAL.
        ADD 1 TO lv_max_workorder.
        lr_data->workorder = lv_max_workorder.

        CALL FUNCTION 'CONVERSION_EXIT_ALPHA_INPUT'
            EXPORTING
                input  = lr_data->workorder
            IMPORTING
                output = lr_data->workorder.

        io_modify->update(
          EXPORTING
            iv_node           = is_ctx-node_key    " uuid of node
            iv_key            = lr_data->key    " key of line
            is_data           = lr_data            " ref to modified data
            it_changed_fields = VALUE #( ( zif_i_tp_work_order8_c=>sc_node_attribute-z_i_tp_work_order-workorder ) )
        ).
      ENDIF.
    ENDLOOP.
  endmethod.
ENDCLASS.
