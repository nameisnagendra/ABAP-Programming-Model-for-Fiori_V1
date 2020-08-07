@AbapCatalog.sqlViewName: 'ZIORDEROPER123'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Operation Details'
@VDM.viewType: #BASIC
define view z_I_order_oper_123
  as select from zorder_oper_123
  association [0..1] to zwork_order_123 as _toHeader on $projection.workorder = _toHeader.workorder
{
      //ZORDER_OPER_123
  key workorder,
  key activity,
      description,
      act_work,
      pl_work,
      unit,
      start_on,

      _toHeader
}
