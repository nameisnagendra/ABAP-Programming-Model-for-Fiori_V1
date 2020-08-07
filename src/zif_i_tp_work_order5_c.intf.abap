interface ZIF_I_TP_WORK_ORDER5_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF Z_I_TP_ORDEROPER,
 CREATE_Z_I_TP_ORDEROPER        TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F4CADB8BFDFA69',
 DELETE_Z_I_TP_ORDEROPER        TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F4CADB8BFE7A69',
 SAVE_Z_I_TP_ORDEROPER          TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F4CADB8BFEFA69',
 UPDATE_Z_I_TP_ORDEROPER        TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F4CADB8BFE3A69',
 VALIDATE_Z_I_TP_ORDEROPER      TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F4CADB8BFEBA69',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_WORK_ORDER,
 CREATE_Z_I_TP_WORK_ORDER       TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F4CADB8BEF7A69',
 DELETE_Z_I_TP_WORK_ORDER       TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F4CADB8BEFFA69',
 LOCK_Z_I_TP_WORK_ORDER         TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F4CADB8BEEBA69',
 SAVE_Z_I_TP_WORK_ORDER         TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F4CADB8BF07A69',
 UNLOCK_Z_I_TP_WORK_ORDER       TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F4CADB8BEEFA69',
 UPDATE_Z_I_TP_WORK_ORDER       TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F4CADB8BEFBA69',
 VALIDATE_Z_I_TP_WORK_ORDER     TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F4CADB8BF03A69',
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF Z_I_TP_WORK_ORDER,
        BEGIN OF LOCK_Z_I_TP_WORK_ORDER,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF LOCK_Z_I_TP_WORK_ORDER,
        BEGIN OF UNLOCK_Z_I_TP_WORK_ORDER,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF UNLOCK_Z_I_TP_WORK_ORDER,
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ALTERNATIVE_KEY,
      BEGIN OF Z_I_TP_ORDEROPER,
 DB_KEY                         TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5F4CADB8BF23A69',
 PARENT_KEY                     TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5F4CADB8BF25A69',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_WORK_ORDER,
 DB_KEY                         TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5F4CADB8BF1FA69',
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_ALTERNATIVE_KEY .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF Z_I_TP_ORDEROPER,
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BFD9A69',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BFDDA69',
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BFF3A69',
 TO_ROOT                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BFF5A69',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_ORDEROPER_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BFF7A69',
      END OF Z_I_TP_ORDEROPER_MESSAGE,
      BEGIN OF Z_I_TP_ORDEROPER_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BFF9A69',
      END OF Z_I_TP_ORDEROPER_PROPERTY,
      BEGIN OF Z_I_TP_WORK_ORDER,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BEE9A69',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BEE5A69',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BEF5A69',
 _TOOPERATIONS                  TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BFD3A69',
      END OF Z_I_TP_WORK_ORDER,
      BEGIN OF Z_I_TP_WORK_ORDER_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BF0DA69',
      END OF Z_I_TP_WORK_ORDER_LOCK,
      BEGIN OF Z_I_TP_WORK_ORDER_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BF0BA69',
      END OF Z_I_TP_WORK_ORDER_MESSAGE,
      BEGIN OF Z_I_TP_WORK_ORDER_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F4CADB8BF0FA69',
      END OF Z_I_TP_WORK_ORDER_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF Z_I_TP_ORDEROPER,
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
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_WORK_ORDER,
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
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE '005056B1212D1EDAB5F4CADB8BEDBA69' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'Z_I_TP_WORK_ORDER' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF Z_I_TP_ORDEROPER,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F4CADB8BF27A69',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_WORK_ORDER,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F4CADB8BF21A69',
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_DETERMINATION .
  constants:
    BEGIN OF SC_GROUP,
 Z_I_TP_WORK_ORDER              TYPE /BOBF/OBM_GROUP_KEY VALUE '005056B1212D1EDAB5F4CADB8BFFFA69',
    END OF SC_GROUP .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 Z_I_TP_ORDEROPER               TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F4CADB8BF15A69',
 Z_I_TP_ORDEROPER_MESSAGE       TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F4CADB8BFD7A69',
 Z_I_TP_ORDEROPER_PROPERTY      TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F4CADB8BFDBA69',
 Z_I_TP_WORK_ORDER              TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F4CADB8BEDFA69',
 Z_I_TP_WORK_ORDER_LOCK         TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F4CADB8BEE7A69',
 Z_I_TP_WORK_ORDER_MESSAGE      TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F4CADB8BEE3A69',
 Z_I_TP_WORK_ORDER_PROPERTY     TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F4CADB8BEF3A69',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF Z_I_TP_ORDEROPER,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  WORKORDER                      TYPE STRING VALUE 'WORKORDER',
  ACTIVITY                       TYPE STRING VALUE 'ACTIVITY',
  DESCRIPTION                    TYPE STRING VALUE 'DESCRIPTION',
  ACT_WORK                       TYPE STRING VALUE 'ACT_WORK',
  PL_WORK                        TYPE STRING VALUE 'PL_WORK',
  UNIT                           TYPE STRING VALUE 'UNIT',
  START_ON                       TYPE STRING VALUE 'START_ON',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_WORK_ORDER,
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
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF Z_I_TP_ORDEROPER,
 Z_I_TP_ORDEROPER               TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '005056B1212D1EDAB5F4CADB8BFD1A69',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_WORK_ORDER,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '005056B1212D1EDAB5F4CADB8BEE1A69',
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF Z_I_TP_ORDEROPER,
 ALTKEY_UNIQUENESS_CHECK        TYPE /BOBF/VAL_KEY VALUE '005056B1212D1EDAB5F4CADB8BF2DA69',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_WORK_ORDER,
 ALTKEY_UNIQUENESS_CHECK        TYPE /BOBF/VAL_KEY VALUE '005056B1212D1EDAB5F4CADB8BF51A69',
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_VALIDATION .
endinterface.
