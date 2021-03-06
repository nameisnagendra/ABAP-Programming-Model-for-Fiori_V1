interface ZIF_I_TP_WORK_ORDER3_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF Z_I_TP_ORDEROPER,
 CREATE_Z_I_TP_ORDEROPER        TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F2A6F68A2F7067',
 DELETE_Z_I_TP_ORDEROPER        TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F2A6F68A2FF067',
 SAVE_Z_I_TP_ORDEROPER          TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F2A6F68A307067',
 UPDATE_Z_I_TP_ORDEROPER        TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F2A6F68A2FB067',
 VALIDATE_Z_I_TP_ORDEROPER      TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F2A6F68A303067',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_WORK_ORDER,
 CREATE_Z_I_TP_WORK_ORDER       TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F2A6F68A227067',
 DELETE_Z_I_TP_WORK_ORDER       TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F2A6F68A22F067',
 LOCK_Z_I_TP_WORK_ORDER         TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F2A6F68A21B067',
 SAVE_Z_I_TP_WORK_ORDER         TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F2A6F68A237067',
 UNLOCK_Z_I_TP_WORK_ORDER       TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F2A6F68A21F067',
 UPDATE_Z_I_TP_WORK_ORDER       TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F2A6F68A22B067',
 VALIDATE_Z_I_TP_WORK_ORDER     TYPE /BOBF/ACT_KEY VALUE '005056B1212D1EDAB5F2A6F68A233067',
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
 DB_KEY                         TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5F2A6F68A253067',
 PARENT_KEY                     TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5F2A6F68A255067',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_WORK_ORDER,
 DB_KEY                         TYPE /BOBF/OBM_ALTKEY_KEY VALUE '005056B1212D1EDAB5F2A6F68A24F067',
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_ALTERNATIVE_KEY .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF Z_I_TP_ORDEROPER,
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A2F1067',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A2F5067',
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A30B067',
 TO_ROOT                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A30D067',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_ORDEROPER_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A30F067',
      END OF Z_I_TP_ORDEROPER_MESSAGE,
      BEGIN OF Z_I_TP_ORDEROPER_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A311067',
      END OF Z_I_TP_ORDEROPER_PROPERTY,
      BEGIN OF Z_I_TP_WORK_ORDER,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A219067',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A215067',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A225067',
 _TOOPERATIONS                  TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A2EB067',
      END OF Z_I_TP_WORK_ORDER,
      BEGIN OF Z_I_TP_WORK_ORDER_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A23D067',
      END OF Z_I_TP_WORK_ORDER_LOCK,
      BEGIN OF Z_I_TP_WORK_ORDER_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A23B067',
      END OF Z_I_TP_WORK_ORDER_MESSAGE,
      BEGIN OF Z_I_TP_WORK_ORDER_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE '005056B1212D1EDAB5F2A6F68A23F067',
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
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE '005056B1212D1EDAB5F2A6F68A20B067' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'Z_I_TP_WORK_ORDER' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF Z_I_TP_ORDEROPER,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F2A6F68A257067',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_WORK_ORDER,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE '005056B1212D1EDAB5F2A6F68A251067',
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_DETERMINATION .
  constants:
    BEGIN OF SC_GROUP,
 Z_I_TP_WORK_ORDER              TYPE /BOBF/OBM_GROUP_KEY VALUE '005056B1212D1EDAB5F2A6F68A317067',
    END OF SC_GROUP .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 Z_I_TP_ORDEROPER               TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F2A6F68A245067',
 Z_I_TP_ORDEROPER_MESSAGE       TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F2A6F68A2EF067',
 Z_I_TP_ORDEROPER_PROPERTY      TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F2A6F68A2F3067',
 Z_I_TP_WORK_ORDER              TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F2A6F68A20F067',
 Z_I_TP_WORK_ORDER_LOCK         TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F2A6F68A217067',
 Z_I_TP_WORK_ORDER_MESSAGE      TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F2A6F68A213067',
 Z_I_TP_WORK_ORDER_PROPERTY     TYPE /BOBF/OBM_NODE_KEY VALUE '005056B1212D1EDAB5F2A6F68A223067',
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
  COSTCRITICALITY                TYPE STRING VALUE 'COSTCRITICALITY',
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF Z_I_TP_ORDEROPER,
 Z_I_TP_ORDEROPER               TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '005056B1212D1EDAB5F2A6F68A2E9067',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_WORK_ORDER,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE '005056B1212D1EDAB5F2A6F68A211067',
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF Z_I_TP_ORDEROPER,
 ALTKEY_UNIQUENESS_CHECK        TYPE /BOBF/VAL_KEY VALUE '005056B1212D1EDAB5F2A6F68A25D067',
      END OF Z_I_TP_ORDEROPER,
      BEGIN OF Z_I_TP_WORK_ORDER,
 ALTKEY_UNIQUENESS_CHECK        TYPE /BOBF/VAL_KEY VALUE '005056B1212D1EDAB5F2A6F68A281067',
      END OF Z_I_TP_WORK_ORDER,
    END OF SC_VALIDATION .
endinterface.
