@AbapCatalog.sqlViewName: 'ZCORDEROPERS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order Operations'
@VDM.viewType: #CONSUMPTION
@ObjectModel:{

createEnabled: true,
updateEnabled: true,
deleteEnabled: true
}

//CDS Rule: Remember to double-maintain the annotations that have the VIEW scope. 
//In CDS views, only the annotations with ELEMENT scope are inherited from the business object view.
define view z_c_order_operations as select from Z_I_TP_ORDEROPER
association[0..1] to Z_C_WORK_ORDERS as _toHeader on $projection.workorder = _toHeader.workorder {
    //Z_I_TP_ORDEROPER
    key workorder,
    key activity,
    description,
    act_work,
    pl_work,
    unit,
    start_on,
    /* Associations */
    //Z_I_TP_ORDEROPER
    _toHeader
}
