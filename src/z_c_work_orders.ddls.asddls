@AbapCatalog.sqlViewName: 'ZCWORKORDERS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Work Order Details'
@VDM.viewType: #CONSUMPTION
@ObjectModel:{

transactionalProcessingDelegated: true,
compositionRoot: true,
createEnabled: true,
updateEnabled: true,
deleteEnabled: true

}

@OData.publish: true

//CDS Rule: Remember to double-maintain the annotations that have the VIEW scope. 
//In CDS views, only the annotations with ELEMENT scope are inherited from the business object view.

@Metadata.allowExtensions: true
define view Z_C_WORK_ORDERS as select from Z_I_TP_Work_order
association[0..*] to z_c_order_operations as _toOperations on $projection.workorder = _toOperations.workorder
//association[0..1] to I_Equipment as _Equipments on $projection.equnr = _Equipments.Equipment 
{
    //Z_I_TP_Work_order
    @ObjectModel.text.element: ['ktext']
    key workorder,
//    @ObjectModel.foreignKey.association: '_Equipments'
    equnr,
    auart,
    ernam,
    erdat,
    ktext,
    werks,
    astnr,
    pl_cost,
    act_cost,
    currency,
    statusCriticality,
    costCriticality,
    deviationPercentage,
    pecentage,
    /* Associations */
    //Z_I_TP_Work_order
    _toOperations
//    _Equipments
}
