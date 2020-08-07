@AbapCatalog.sqlViewName: 'ZITESTBO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'test'
@ObjectModel:{
transactionalProcessingEnabled: true,
compositionRoot: true,
createEnabled: true,
updateEnabled: true,
deleteEnabled: true,

writeActivePersistence: 'ZWORK_ORDER_123',

semanticKey: ['workorder'],
draftEnabled: true,
writeDraftPersistence: 'ZTEST_D1'

}
define view z_test_bo as select from zwork_order_123 {
    //zwork_order_123
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
    last_changed,
    ' % ' as test
}
