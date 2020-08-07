@AbapCatalog.sqlViewName: 'ZIEQUIPMENTS'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Equipment Details'

@Search.searchable: true
define view ZI_EQUIPMENT as select from zequipments {
    //zequipments
    key equnr,
    @Search:{ defaultSearchElement: true, fuzzinessThreshold: 0.7, ranking: #MEDIUM}
    @EndUserText.label: 'Equpment Desc'
    equi_text
}
