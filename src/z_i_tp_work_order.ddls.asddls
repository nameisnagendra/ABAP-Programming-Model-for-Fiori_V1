@AbapCatalog.sqlViewName: 'ZITP_WORKORDER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Business Object Work Order'
@VDM.viewType: #TRANSACTIONAL

@ObjectModel:{
transactionalProcessingEnabled: true,
compositionRoot: true,
createEnabled: true,
updateEnabled: true,
deleteEnabled: true,
writeActivePersistence: 'ZWORK_ORDER_123',
semanticKey: ['workorder']
}

define view Z_I_TP_Work_order
  as select from Z_I_WORK_ORDER_123
  association [0..*] to Z_I_TP_ORDEROPER as _toOperations on $projection.workorder = _toOperations.workorder
{

      //      @ObjectModel.readOnly: true
  key workorder,
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
      //Z_I_WORK_ORDER_123
      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      _toOperations
}
