@AbapCatalog.sqlViewName: 'ZITP_ORDOPER'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Order Operations'
@VDM.viewType: #TRANSACTIONAL

@ObjectModel:{
createEnabled: true,
updateEnabled: true,
deleteEnabled: true,
writeActivePersistence: 'ZORDER_OPER_123',
semanticKey: ['workorder','activity']

}
define view Z_I_TP_ORDEROPER
  as select from z_I_order_oper_123
  association [0..1] to Z_I_TP_Work_order as _toHeader on $projection.workorder = _toHeader.workorder
{
      //z_I_order_oper_123
  key workorder,
  key activity,
      description,
      act_work,
      pl_work,
      unit,
      start_on,
      /* Associations */
      //z_I_order_oper_123
      @ObjectModel.association.type: [#TO_COMPOSITION_PARENT,#TO_COMPOSITION_ROOT]
      _toHeader
}
