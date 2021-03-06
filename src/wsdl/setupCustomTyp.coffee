simpleTypes = module.exports =
  CustomizationFieldType:
    base: 'xsd:string'
    values: ["_checkBox","_currency","_date","_datetime","_decimalNumber","_document","_eMailAddress","_freeFormText","_help","_hyperlink","_image","_inlineHTML","_integerNumber","_listRecord","_longText","_multipleSelect","_password","_percent","_phoneNumber","_richText","_textArea","_timeOfDay"]
  CustomizationDynamicDefault:
    base: 'xsd:string'
    values: ["_currentDateTime","_currentUser","_currentUsersDepartment","_currentUsersLocation","_currentUsersSupervisor","_currentUsersSubsidiary"]
  CustomizationDisplayType:
    base: 'xsd:string'
    values: ["_disabled","_hidden","_inlineText","_normal","_showAsList"]
  CustomizationFilterCompareType:
    base: 'xsd:string'
    values: ["_equal","_greaterThan","_greaterThanOrEqual","_lessThan","_lessThanOrEqual","_notEqual"]
  CustomRecordTypePermissionsPermittedLevel:
    base: 'xsd:string'
    values: ["_create","_edit","_full","_none","_view"]
  CustomRecordTypePermissionsRestriction:
    base: 'xsd:string'
    values: ["_editingOnly","_viewingAndEditing"]
  ItemCustomFieldItemSubType:
    base: 'xsd:string'
    values: ["_both","_purchase","_sale"]
  CustomizationAccessLevel:
    base: 'xsd:string'
    values: ["_none","_edit","_view"]
  CustomizationSearchLevel:
    base: 'xsd:string'
    values: ["_none","_edit","_run"]
  CustomRecordTypeAccessType:
    base: 'xsd:string'
    values: ["_noPermissionRequired","_requireCustomRecordEntriesPermission","_usePermissionList"]
