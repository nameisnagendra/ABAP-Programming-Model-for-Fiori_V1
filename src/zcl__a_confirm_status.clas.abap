CLASS zcl__a_confirm_status DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_a_supercl_simple
  FINAL
  CREATE PUBLIC .

PUBLIC SECTION.

  METHODS /bobf/if_frw_action~execute
    REDEFINITION .
PROTECTED SECTION.
PRIVATE SECTION.
ENDCLASS.



CLASS zcl__a_confirm_status IMPLEMENTATION.


  METHOD /bobf/if_frw_action~execute.



    " Typed with node's combined table type
    DATA(lt_work_order) = VALUE ztitp_work_order8(  ).

    " READING BO data ----------------------------------------------

    " Retrieve the data of the requested node instance
    io_read->retrieve(
      EXPORTING
        iv_node         = is_ctx-node_key
        it_key          = it_key
      IMPORTING
        et_data         = lt_work_order
    ).

    " WRITING BO data ---------------------------------------------

    LOOP AT lt_work_order ASSIGNING FIELD-SYMBOL(<s_work_order>).

      " Set the status to confirm
      <s_work_order>-astnr = 'CNF'.  "


      " Update the changed data (Order Status) of the node instance
      io_modify->update(
        EXPORTING
          iv_node               = is_ctx-node_key
          iv_key                = <s_work_order>-key
          iv_root_key           = <s_work_order>-root_key
          is_data               = REF #( <s_work_order>-node_data )
          it_changed_fields     = VALUE #(
            ( zif_i_tp_work_order8_c=>sc_node_attribute-z_i_tp_work_order-astnr )
                    )

        ).

    ENDLOOP.
  ENDMETHOD.
ENDCLASS.
