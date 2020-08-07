@AbapCatalog.sqlViewName: 'ZIWORKORDER123'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'WOrk order Details'
@VDM.viewType: #BASIC

define view Z_I_WORK_ORDER_123
  as select from zwork_order_123
  association [0..*] to zorder_oper_123 as _toOperations on $projection.workorder = _toOperations.workorder

{


      //ZWORK_ORDER_123
  key workorder,
      equnr,
      auart,
      ernam,
      erdat,
      ktext,
      werks,
      astnr,
      @Semantics.amount.currencyCode: 'currency'
      pl_cost,
      @Semantics.amount.currencyCode: 'currency'
      act_cost,
      @Semantics.currencyCode: true
      currency,
      last_changed,

      case when astnr = 'REL' then 2
      when astnr = 'CNF' then 3
      when astnr = 'CLSD' then 1
      else 0
      end                            as statusCriticality,

      case when act_cost > pl_cost then 1
      else 3
      end                            as costCriticality,

      @Semantics.quantity.unitOfMeasure: 'pecentage'
      case when act_cost > pl_cost 
      then division( ( act_cost - pl_cost ) * 100 , pl_cost, 2)
      else 0.00
      end                            as deviationPercentage,

      @Semantics.unitOfMeasure: true
      cast(' % ' as abap.unit( 3 ) ) as pecentage,



      _toOperations
}
