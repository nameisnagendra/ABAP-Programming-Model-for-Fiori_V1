@AbapCatalog.sqlViewName: 'ZCTESBO'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Description'
@ObjectModel:{
transactionalProcessingDelegated: true,
createEnabled: true,
updateEnabled: true,
deleteEnabled: true,
draftEnabled: true,
compositionRoot: true,
semanticKey: ['workorder']
}
@OData.publish: true
define view z_c_test_bo as select from z_test_bo {
    //z_test_bo
    @ObjectModel.readOnly: true
    @UI.lineItem: [{ position: 10 }]
    key workorder,
    @UI.identification: [{ position: 10 }]
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
    test
}
