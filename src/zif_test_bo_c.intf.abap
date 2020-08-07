interface ZIF_TEST_BO_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF Z_TEST_BO,
 ACTIVATION                     TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F5A137D82F7DC2',
 CREATE_Z_TEST_BO               TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F5983525D2BDBB',
 DELETE_Z_TEST_BO               TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F5983525D33DBB',
 EDIT                           TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F5A137D82F5DC2',
 LOCK_Z_TEST_BO                 TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F5983525D1FDBB',
 PREPARATION                    TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F5A137D82FBDC2',
 SAVE_Z_TEST_BO                 TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F5983525D3BDBB',
 UNLOCK_Z_TEST_BO               TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F5983525D23DBB',
 UPDATE_Z_TEST_BO               TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F5983525D2FDBB',
 VALIDATE_Z_TEST_BO             TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F5983525D37DBB',
 VALIDATION                     TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F5A137D82F9DC2',
      END OF Z_TEST_BO,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF Z_TEST_BO,
        BEGIN OF EDIT,
 PRESERVE_CHANGES               TYPE STRING VALUE 'PRESERVE_CHANGES',
        END OF EDIT,
        BEGIN OF LOCK_Z_TEST_BO,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF LOCK_Z_TEST_BO,
        BEGIN OF PREPARATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF PREPARATION,
        BEGIN OF UNLOCK_Z_TEST_BO,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF UNLOCK_Z_TEST_BO,
        BEGIN OF VALIDATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF VALIDATION,
      END OF Z_TEST_BO,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ALTERNATIVE_KEY,
      BEGIN OF Z_TEST_BO,
 ACTIVE_ENTITY_KEY              TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5F5A137D82F3DC2',
 DB_KEY                         TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5F5983525D49DBB',
      END OF Z_TEST_BO,
    END OF SC_ALTERNATIVE_KEY .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF Z_TEST_BO,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F5983525D1DDBB',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F5983525D19DBB',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F5983525D29DBB',
      END OF Z_TEST_BO,
      BEGIN OF Z_TEST_BO_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F5983525D41DBB',
      END OF Z_TEST_BO_LOCK,
      BEGIN OF Z_TEST_BO_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F5983525D3FDBB',
      END OF Z_TEST_BO_MESSAGE,
      BEGIN OF Z_TEST_BO_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F5983525D43DBB',
      END OF Z_TEST_BO_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF Z_TEST_BO,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF Z_TEST_BO,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE '005056B1212D1EDAB5F5983525D0FDBB' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'Z_TEST_BO' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF Z_TEST_BO,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F5983525D4BDBB',
 CENTRAL_ADMIN_DATA             TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F5A137D82FDDC2',
 DELETE_DRAFT_WHN_ACTIVE_DELETE TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F5A137D830BDC2',
 DRAFT_ACTION_CONTROL           TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F5A137D8309DC2',
 DRAFT_SYS_ADMIN_DATA           TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F5A137D8307DC2',
 DURABLE_LOCK_CLEANUP_CLEANUP   TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F5A137D8305DC2',
 DURABLE_LOCK_CLEANUP_DELETE    TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F5A137D82FFDC2',
 DURABLE_LOCK_CLEANUP_FAIL_SAVE TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F5A137D8303DC2',
 DURABLE_LOCK_CLEANUP_SUCC_SAVE TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F5A137D8301DC2',
      END OF Z_TEST_BO,
    END OF SC_DETERMINATION .
  constants:
    BEGIN OF SC_GROUP,
 DRAFT_CONSISTENCY              TYPE /BOBF/OBM_GROUP_KEY VALUE '005056B1212D1EDAB5F5A137D83A7DC2',
 Z_TEST_BO                      TYPE /BOBF/OBM_GROUP_KEY VALUE '005056B1212D1EDAB5F5983525DB9DBB',
    END OF SC_GROUP .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 Z_TEST_BO                      TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F5983525D13DBB',
 Z_TEST_BO_LOCK                 TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F5983525D1BDBB',
 Z_TEST_BO_MESSAGE              TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F5983525D17DBB',
 Z_TEST_BO_PROPERTY             TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F5983525D27DBB',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF Z_TEST_BO,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  WORKORDER                      TYPE STRING VALUE 'WORKORDER',
  EQUNR                          TYPE STRING VALUE 'EQUNR',
  AUART                          TYPE STRING VALUE 'AUART',
  ERNAM                          TYPE STRING VALUE 'ERNAM',
  ERDAT                          TYPE STRING VALUE 'ERDAT',
  KTEXT                          TYPE STRING VALUE 'KTEXT',
  WERKS                          TYPE STRING VALUE 'WERKS',
  ASTNR                          TYPE STRING VALUE 'ASTNR',
  PL_COST                        TYPE STRING VALUE 'PL_COST',
  ACT_COST                       TYPE STRING VALUE 'ACT_COST',
  CURRENCY                       TYPE STRING VALUE 'CURRENCY',
  LAST_CHANGED                   TYPE STRING VALUE 'LAST_CHANGED',
  TEST                           TYPE STRING VALUE 'TEST',
  HASACTIVEENTITY                TYPE STRING VALUE 'HASACTIVEENTITY',
  DRAFTENTITYCREATIONDATETIME    TYPE STRING VALUE 'DRAFTENTITYCREATIONDATETIME',
  DRAFTENTITYLASTCHANGEDATETIME  TYPE STRING VALUE 'DRAFTENTITYLASTCHANGEDATETIME',
  DRAFTADMINISTRATIVEDATAUUID    TYPE STRING VALUE 'DRAFTADMINISTRATIVEDATAUUID',
  DRAFTENTITYCONSISTENCYSTATUS   TYPE STRING VALUE 'DRAFTENTITYCONSISTENCYSTATUS',
  DRAFTENTITYOPERATIONCODE       TYPE STRING VALUE 'DRAFTENTITYOPERATIONCODE',
  ISACTIVEENTITY                 TYPE STRING VALUE 'ISACTIVEENTITY',
      END OF Z_TEST_BO,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF Z_TEST_BO,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '005056B1212D1EDAB5F5983525D15DBB',
      END OF Z_TEST_BO,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_STATUS_VARIABLE,
      BEGIN OF Z_TEST_BO,
 DRAFT_CONSISTENCY_STATUS       TYPE /BOBF/STA_VAR_KEY VALUE '005056B1212D1EDAB5F5A137D83A5DC2',
      END OF Z_TEST_BO,
    END OF SC_STATUS_VARIABLE .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF Z_TEST_BO,
 DURABLE_LOCK_CREATE_FOR_NEW    TYPE /BOBF/VAL_KEY VALUE '005056B1212D1EDAB5F5A137D830DDC2',
      END OF Z_TEST_BO,
    END OF SC_VALIDATION .
endinterface.
