exports.complexTypes =
  CustomRecord:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customRecordId: { type: 'xsd:string', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      disclaimer: { type: 'xsd:string', minOccurs: '0' }
      created: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModified: { type: 'xsd:dateTime', minOccurs: '0' }
      name: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      recType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      enableNumbering: { type: 'xsd:boolean', minOccurs: '0' }
      numberingPrefix: { type: 'xsd:string', minOccurs: '0' }
      numberingSuffix: { type: 'xsd:string', minOccurs: '0' }
      numberingMinDigits: { type: 'xsd:long', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      numberingInit: { type: 'xsd:long', minOccurs: '0' }
      numberingCurrentNumber: { type: 'xsd:long', minOccurs: '0' }
      allowNumberingOverride: { type: 'xsd:boolean', minOccurs: '0' }
      isNumberingUpdateable: { type: 'xsd:boolean', minOccurs: '0' }
      includeName: { type: 'xsd:boolean', minOccurs: '0' }
      showId: { type: 'xsd:boolean', minOccurs: '0' }
      showCreationDate: { type: 'xsd:boolean', minOccurs: '0' }
      showCreationDateOnList: { type: 'xsd:boolean', minOccurs: '0' }
      showLastModified: { type: 'xsd:boolean', minOccurs: '0' }
      showLastModifiedOnList: { type: 'xsd:boolean', minOccurs: '0' }
      showOwner: { type: 'xsd:boolean', minOccurs: '0' }
      showOwnerOnList: { type: 'xsd:boolean', minOccurs: '0' }
      showOwnerAllowChange: { type: 'xsd:boolean', minOccurs: '0' }
      usePermissions: { type: 'xsd:boolean', minOccurs: '0' }
      allowAttachments: { type: 'xsd:boolean', minOccurs: '0' }
      showNotes: { type: 'xsd:boolean', minOccurs: '0' }
      enablEmailMerge: { type: 'xsd:boolean', minOccurs: '0' }
      isOrdered: { type: 'xsd:boolean', minOccurs: '0' }
      allowInlineEditing: { type: 'xsd:boolean', minOccurs: '0' }
      isAvailableOffline: { type: 'xsd:boolean', minOccurs: '0' }
      allowQuickSearch: { type: 'xsd:boolean', minOccurs: '0' }
      recordName: { type: 'xsd:string', minOccurs: '0' }
      scriptId: { type: 'xsd:string', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  CustomRecordSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:CustomRecordSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      ownerJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  CustomRecordSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'setupCustom:CustomRecordSearch', minOccurs: '0' }
      columns: { type: 'setupCustom:CustomRecordSearchRow', minOccurs: '0' }
  CustomRecordSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:CustomRecordSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      ownerJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  CustomList:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isOrdered: { type: 'xsd:boolean', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isMatrixOption: { type: 'xsd:boolean', minOccurs: '0' }
      scriptId: { type: 'xsd:string', minOccurs: '0' }
      convertToCustomRecord: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      customValueList: { type: 'setupCustom:CustomListCustomValueList', minOccurs: '0' }
      translationsList: { type: 'setupCustom:CustomListTranslationsList', minOccurs: '0' }
  CustomListCustomValue:
    elements:
      value: { type: 'xsd:string', minOccurs: '0' }
      abbreviation: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      valueId: { type: 'xsd:long', minOccurs: '0' }
      valueLanguageValueList: { type: 'setupCustom:LanguageValueList', minOccurs: '0' }
  CustomListCustomValueList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      customValue: { type: 'setupCustom:CustomListCustomValue', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomListTranslations:
    elements:
      locale: { type: 'platformCommonTyp:Language', minOccurs: '0' }
      localeDescription: { type: 'xsd:string', minOccurs: '0' }
      name: { type: 'xsd:string', minOccurs: '0' }
  CustomListTranslationsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      translations: { type: 'setupCustom:CustomListTranslations', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordType:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      recordName: { type: 'xsd:string', minOccurs: '0' }
      includeName: { type: 'xsd:boolean', minOccurs: '0' }
      showId: { type: 'xsd:boolean', minOccurs: '0' }
      showCreationDate: { type: 'xsd:boolean', minOccurs: '0' }
      showCreationDateOnList: { type: 'xsd:boolean', minOccurs: '0' }
      showLastModified: { type: 'xsd:boolean', minOccurs: '0' }
      showLastModifiedOnList: { type: 'xsd:boolean', minOccurs: '0' }
      showOwner: { type: 'xsd:boolean', minOccurs: '0' }
      showOwnerOnList: { type: 'xsd:boolean', minOccurs: '0' }
      showOwnerAllowChange: { type: 'xsd:boolean', minOccurs: '0' }
      accessType: { type: 'setupCustomTyp:CustomRecordTypeAccessType', minOccurs: '0' }
      allowAttachments: { type: 'xsd:boolean', minOccurs: '0' }
      showNotes: { type: 'xsd:boolean', minOccurs: '0' }
      enableMailMerge: { type: 'xsd:boolean', minOccurs: '0' }
      isOrdered: { type: 'xsd:boolean', minOccurs: '0' }
      allowInlineEditing: { type: 'xsd:boolean', minOccurs: '0' }
      isAvailableOffline: { type: 'xsd:boolean', minOccurs: '0' }
      allowQuickSearch: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      disclaimer: { type: 'xsd:string', minOccurs: '0' }
      enableNumbering: { type: 'xsd:boolean', minOccurs: '0' }
      numberingPrefix: { type: 'xsd:string', minOccurs: '0' }
      numberingSuffix: { type: 'xsd:string', minOccurs: '0' }
      numberingMinDigits: { type: 'xsd:long', minOccurs: '0' }
      numberingInit: { type: 'xsd:long', minOccurs: '0' }
      numberingCurrentNumber: { type: 'xsd:long', minOccurs: '0' }
      allowNumberingOverride: { type: 'xsd:boolean', minOccurs: '0' }
      isNumberingUpdateable: { type: 'xsd:boolean', minOccurs: '0' }
      scriptId: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      tabsList: { type: 'setupCustom:CustomRecordTypeTabsList', minOccurs: '0' }
      sublistsList: { type: 'setupCustom:CustomRecordTypeSublistsList', minOccurs: '0' }
      formsList: { type: 'setupCustom:CustomRecordTypeFormsList', minOccurs: '0' }
      onlineFormsList: { type: 'setupCustom:CustomRecordTypeOnlineFormsList', minOccurs: '0' }
      permissionsList: { type: 'setupCustom:CustomRecordTypePermissionsList', minOccurs: '0' }
      linksList: { type: 'setupCustom:CustomRecordTypeLinksList', minOccurs: '0' }
      managersList: { type: 'setupCustom:CustomRecordTypeManagersList', minOccurs: '0' }
      childrenList: { type: 'setupCustom:CustomRecordTypeChildrenList', minOccurs: '0' }
      parentsList: { type: 'setupCustom:CustomRecordTypeParentsList', minOccurs: '0' }
      translationsList: { type: 'setupCustom:CustomRecordTypeTranslationsList', minOccurs: '0' }
      customFieldList: { type: 'setupCustom:CustomRecordTypeFieldList', minOccurs: '0' }
  CustomRecordTypeFieldList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      customField: { type: 'setupCustom:CustomRecordCustomField', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordTypeTabs:
    elements:
      tabTitle: { type: 'xsd:string', minOccurs: '0' }
      tabParent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tabTitleLanguageValueList: { type: 'setupCustom:LanguageValueList', minOccurs: '0' }
  CustomRecordTypeTabsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      tabs: { type: 'setupCustom:CustomRecordTypeTabs', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordTypeForms:
    elements:
      formEdit: { type: 'xsd:string', minOccurs: '0' }
      formName: { type: 'xsd:string', minOccurs: '0' }
      formPref: { type: 'xsd:boolean', minOccurs: '0' }
  CustomRecordTypeFormsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      forms: { type: 'setupCustom:CustomRecordTypeForms', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordTypeOnlineForms:
    elements:
      onlineFormName: { type: 'xsd:string', minOccurs: '0' }
      isOnline: { type: 'xsd:string', minOccurs: '0' }
      templateName: { type: 'xsd:string', minOccurs: '0' }
  CustomRecordTypeOnlineFormsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      onlineForms: { type: 'setupCustom:CustomRecordTypeOnlineForms', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordTypePermissions:
    elements:
      permittedRole: { type: 'platformCore:RecordRef', minOccurs: '0' }
      permittedLevel: { type: 'setupCustomTyp:CustomRecordTypePermissionsPermittedLevel', minOccurs: '0' }
      restriction: { type: 'setupCustomTyp:CustomRecordTypePermissionsRestriction', minOccurs: '0' }
      defaultForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      restrictForm: { type: 'xsd:boolean', minOccurs: '0' }
      searchForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      searchResults: { type: 'platformCore:RecordRef', minOccurs: '0' }
      listView: { type: 'platformCore:RecordRef', minOccurs: '0' }
      listViewRestricted: { type: 'xsd:boolean', minOccurs: '0' }
      dashboardView: { type: 'platformCore:RecordRef', minOccurs: '0' }
      restrictDashboardView: { type: 'xsd:boolean', minOccurs: '0' }
      sublistView: { type: 'platformCore:RecordRef', minOccurs: '0' }
      restrictSublistView: { type: 'xsd:boolean', minOccurs: '0' }
  CustomRecordTypePermissionsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      permissions: { type: 'setupCustom:CustomRecordTypePermissions', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordTypeLinks:
    elements:
      linkCenter: { type: 'platformCore:RecordRef', minOccurs: '0' }
      linkSection: { type: 'platformCore:RecordRef', minOccurs: '0' }
      linkLabel: { type: 'xsd:string', minOccurs: '0' }
  CustomRecordTypeLinksList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      links: { type: 'setupCustom:CustomRecordTypeLinks', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordTypeManagers:
    elements:
      managerEmp: { type: 'platformCore:RecordRef', minOccurs: '0' }
  CustomRecordTypeManagersList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      managers: { type: 'setupCustom:CustomRecordTypeManagers', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordTypeChildren:
    elements:
      childDescr: { type: 'xsd:string', minOccurs: '0' }
      childTab: { type: 'platformCore:RecordRef', minOccurs: '0' }
  CustomRecordTypeChildrenList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      children: { type: 'setupCustom:CustomRecordTypeChildren', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordTypeParents:
    elements:
      childDescr: { type: 'xsd:string', minOccurs: '0' }
  CustomRecordTypeParentsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      parents: { type: 'setupCustom:CustomRecordTypeParents', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordTypeTranslations:
    elements:
      locale: { type: 'platformCommonTyp:Language', minOccurs: '0' }
      localeDescription: { type: 'xsd:string', minOccurs: '0' }
      name: { type: 'xsd:string', minOccurs: '0' }
  CustomRecordTypeTranslationsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      translations: { type: 'setupCustom:CustomRecordTypeTranslations', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordTypeSublists:
    elements:
      recordSearch: { type: 'platformCore:RecordRef', minOccurs: '0' }
      recordDescr: { type: 'xsd:string', minOccurs: '0' }
      recordDescrLanguageValueList: { type: 'setupCustom:LanguageValueList', minOccurs: '0' }
      recordTab: { type: 'platformCore:RecordRef', minOccurs: '0' }
      recordId: { type: 'xsd:string', minOccurs: '0' }
  CustomRecordTypeSublistsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      sublists: { type: 'setupCustom:CustomRecordTypeSublists', minOccurs: '0', maxOccurs: 'unbounded' }
  EntityCustomField:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      label: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fieldType: { type: 'setupCustomTyp:CustomizationFieldType', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      selectRecordType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeValue: { type: 'xsd:boolean', minOccurs: '0' }
      showInList: { type: 'xsd:boolean', minOccurs: '0' }
      globalSearch: { type: 'xsd:boolean', minOccurs: '0' }
      isParent: { type: 'xsd:boolean', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      availableToSso: { type: 'xsd:boolean', minOccurs: '0' }
      subtab: { type: 'platformCore:RecordRef', minOccurs: '0' }
      displayType: { type: 'setupCustomTyp:CustomizationDisplayType', minOccurs: '0' }
      displayWidth: { type: 'xsd:long', minOccurs: '0' }
      displayHeight: { type: 'xsd:long', minOccurs: '0' }
      help: { type: 'xsd:string', minOccurs: '0' }
      parentSubtab: { type: 'platformCore:RecordRef', minOccurs: '0' }
      linkText: { type: 'xsd:string', minOccurs: '0' }
      isMandatory: { type: 'xsd:boolean', minOccurs: '0' }
      checkSpelling: { type: 'xsd:boolean', minOccurs: '0' }
      maxLength: { type: 'xsd:long', minOccurs: '0' }
      minValue: { type: 'xsd:double', minOccurs: '0' }
      maxValue: { type: 'xsd:double', minOccurs: '0' }
      defaultChecked: { type: 'xsd:boolean', minOccurs: '0' }
      defaultValue: { type: 'xsd:string', minOccurs: '0' }
      isFormula: { type: 'xsd:boolean', minOccurs: '0' }
      defaultSelection: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dynamicDefault: { type: 'setupCustomTyp:CustomizationDynamicDefault', minOccurs: '0' }
      sourceList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFilterBy: { type: 'platformCore:RecordRef', minOccurs: '0' }
      appliesToCustomer: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToProject: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToVendor: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToEmployee: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToOtherName: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToContact: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToPartner: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToWebSite: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToGroup: { type: 'xsd:boolean', minOccurs: '0' }
      availableExternally: { type: 'xsd:boolean', minOccurs: '0' }
      filterList: { type: 'setupCustom:EntityCustomFieldFilterList', minOccurs: '0' }
      accessLevel: { type: 'setupCustomTyp:CustomizationAccessLevel', minOccurs: '0' }
      appliesToStatement: { type: 'xsd:boolean', minOccurs: '0' }
      searchLevel: { type: 'setupCustomTyp:CustomizationSearchLevel', minOccurs: '0' }
      appliesToPriceList: { type: 'xsd:boolean', minOccurs: '0' }
      roleAccessList: { type: 'setupCustom:CustomFieldRoleAccessList', minOccurs: '0' }
      deptAccessList: { type: 'setupCustom:CustomFieldDepartmentAccessList', minOccurs: '0' }
      subAccessList: { type: 'setupCustom:CustomFieldSubAccessList', minOccurs: '0' }
      translationsList: { type: 'setupCustom:CustomFieldTranslationsList', minOccurs: '0' }
  EntityCustomFieldFilter:
    elements:
      fldFilter: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fldFilterChecked: { type: 'xsd:boolean', minOccurs: '0' }
      fldFilterCompareType: { type: 'setupCustomTyp:CustomizationFilterCompareType', minOccurs: '0' }
      fldFilterVal: { type: 'xsd:string', minOccurs: '0' }
      fldFilterSelList: { type: 'setupCustom:FldFilterSelList', minOccurs: '0' }
      fldFilterNotNull: { type: 'xsd:boolean', minOccurs: '0' }
  EntityCustomFieldFilterList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      filter: { type: 'setupCustom:EntityCustomFieldFilter', minOccurs: '0', maxOccurs: 'unbounded' }
  FldFilterSelList:
    elements:
      fldFilterSel: { type: 'platformCore:RecordRef', maxOccurs: 'unbounded' }
  CrmCustomField:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      label: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fieldType: { type: 'setupCustomTyp:CustomizationFieldType', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      selectRecordType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeValue: { type: 'xsd:boolean', minOccurs: '0' }
      showInList: { type: 'xsd:boolean', minOccurs: '0' }
      globalSearch: { type: 'xsd:boolean', minOccurs: '0' }
      isParent: { type: 'xsd:boolean', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subtab: { type: 'platformCore:RecordRef', minOccurs: '0' }
      displayType: { type: 'setupCustomTyp:CustomizationDisplayType', minOccurs: '0' }
      displayWidth: { type: 'xsd:long', minOccurs: '0' }
      displayHeight: { type: 'xsd:long', minOccurs: '0' }
      help: { type: 'xsd:string', minOccurs: '0' }
      parentSubtab: { type: 'platformCore:RecordRef', minOccurs: '0' }
      linkText: { type: 'xsd:string', minOccurs: '0' }
      isMandatory: { type: 'xsd:boolean', minOccurs: '0' }
      checkSpelling: { type: 'xsd:boolean', minOccurs: '0' }
      maxLength: { type: 'xsd:long', minOccurs: '0' }
      minValue: { type: 'xsd:double', minOccurs: '0' }
      maxValue: { type: 'xsd:double', minOccurs: '0' }
      defaultChecked: { type: 'xsd:boolean', minOccurs: '0' }
      defaultValue: { type: 'xsd:string', minOccurs: '0' }
      isFormula: { type: 'xsd:boolean', minOccurs: '0' }
      defaultSelection: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dynamicDefault: { type: 'setupCustomTyp:CustomizationDynamicDefault', minOccurs: '0' }
      sourceList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFilterBy: { type: 'platformCore:RecordRef', minOccurs: '0' }
      appliesToTask: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToProjectTask: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToPhoneCall: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToEvent: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToCase: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToCampaign: { type: 'xsd:boolean', minOccurs: '0' }
      appliesPerKeyword: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToSolution: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToIssue: { type: 'xsd:boolean', minOccurs: '0' }
      availableExternally: { type: 'xsd:boolean', minOccurs: '0' }
      availableToSso: { type: 'xsd:boolean', minOccurs: '0' }
      showIssueChanges: { type: 'xsd:boolean', minOccurs: '0' }
      filterList: { type: 'setupCustom:CrmCustomFieldFilterList', minOccurs: '0' }
      accessLevel: { type: 'setupCustomTyp:CustomizationAccessLevel', minOccurs: '0' }
      searchLevel: { type: 'setupCustomTyp:CustomizationSearchLevel', minOccurs: '0' }
      roleAccessList: { type: 'setupCustom:CustomFieldRoleAccessList', minOccurs: '0' }
      deptAccessList: { type: 'setupCustom:CustomFieldDepartmentAccessList', minOccurs: '0' }
      subAccessList: { type: 'setupCustom:CustomFieldSubAccessList', minOccurs: '0' }
      translationsList: { type: 'setupCustom:CustomFieldTranslationsList', minOccurs: '0' }
  CrmCustomFieldFilter:
    elements:
      fldFilter: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fldFilterChecked: { type: 'xsd:boolean', minOccurs: '0' }
      fldFilterCompareType: { type: 'setupCustomTyp:CustomizationFilterCompareType', minOccurs: '0' }
      fldFilterVal: { type: 'xsd:string', minOccurs: '0' }
      fldFilterSelList: { type: 'setupCustom:FldFilterSelList', minOccurs: '0' }
      fldFilterNotNull: { type: 'xsd:boolean', minOccurs: '0' }
  CrmCustomFieldFilterList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      filter: { type: 'setupCustom:CrmCustomFieldFilter', minOccurs: '0', maxOccurs: 'unbounded' }
  OtherCustomField:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      recType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      label: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fieldType: { type: 'setupCustomTyp:CustomizationFieldType', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      selectRecordType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeValue: { type: 'xsd:boolean', minOccurs: '0' }
      showInList: { type: 'xsd:boolean', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      displayType: { type: 'setupCustomTyp:CustomizationDisplayType', minOccurs: '0' }
      displayWidth: { type: 'xsd:long', minOccurs: '0' }
      displayHeight: { type: 'xsd:long', minOccurs: '0' }
      help: { type: 'xsd:string', minOccurs: '0' }
      linkText: { type: 'xsd:string', minOccurs: '0' }
      isMandatory: { type: 'xsd:boolean', minOccurs: '0' }
      checkSpelling: { type: 'xsd:boolean', minOccurs: '0' }
      maxLength: { type: 'xsd:long', minOccurs: '0' }
      minValue: { type: 'xsd:double', minOccurs: '0' }
      maxValue: { type: 'xsd:double', minOccurs: '0' }
      defaultChecked: { type: 'xsd:boolean', minOccurs: '0' }
      defaultValue: { type: 'xsd:string', minOccurs: '0' }
      isFormula: { type: 'xsd:boolean', minOccurs: '0' }
      defaultSelection: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dynamicDefault: { type: 'setupCustomTyp:CustomizationDynamicDefault', minOccurs: '0' }
      sourceList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFilterBy: { type: 'platformCore:RecordRef', minOccurs: '0' }
      filterList: { type: 'setupCustom:OtherCustomFieldFilterList', minOccurs: '0' }
      accessLevel: { type: 'setupCustomTyp:CustomizationAccessLevel', minOccurs: '0' }
      searchLevel: { type: 'setupCustomTyp:CustomizationSearchLevel', minOccurs: '0' }
      roleAccessList: { type: 'setupCustom:CustomFieldRoleAccessList', minOccurs: '0' }
      deptAccessList: { type: 'setupCustom:CustomFieldDepartmentAccessList', minOccurs: '0' }
      subAccessList: { type: 'setupCustom:CustomFieldSubAccessList', minOccurs: '0' }
      translationsList: { type: 'setupCustom:CustomFieldTranslationsList', minOccurs: '0' }
  OtherCustomFieldFilter:
    elements:
      fldFilter: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fldFilterChecked: { type: 'xsd:boolean', minOccurs: '0' }
      fldFilterCompareType: { type: 'setupCustomTyp:CustomizationFilterCompareType', minOccurs: '0' }
      fldFilterVal: { type: 'xsd:string', minOccurs: '0' }
      fldFilterSelList: { type: 'setupCustom:FldFilterSelList', minOccurs: '0' }
      fldFilterNotNull: { type: 'xsd:boolean', minOccurs: '0' }
  OtherCustomFieldFilterList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      filter: { type: 'setupCustom:OtherCustomFieldFilter', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemCustomField:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      label: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      itemMatrix: { type: 'xsd:boolean', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      fieldType: { type: 'setupCustomTyp:CustomizationFieldType', minOccurs: '0' }
      selectRecordType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeValue: { type: 'xsd:boolean', minOccurs: '0' }
      showInList: { type: 'xsd:boolean', minOccurs: '0' }
      globalSearch: { type: 'xsd:boolean', minOccurs: '0' }
      isParent: { type: 'xsd:boolean', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subtab: { type: 'platformCore:RecordRef', minOccurs: '0' }
      displayType: { type: 'setupCustomTyp:CustomizationDisplayType', minOccurs: '0' }
      displayWidth: { type: 'xsd:long', minOccurs: '0' }
      displayHeight: { type: 'xsd:long', minOccurs: '0' }
      help: { type: 'xsd:string', minOccurs: '0' }
      parentSubtab: { type: 'platformCore:RecordRef', minOccurs: '0' }
      linkText: { type: 'xsd:string', minOccurs: '0' }
      isMandatory: { type: 'xsd:boolean', minOccurs: '0' }
      checkSpelling: { type: 'xsd:boolean', minOccurs: '0' }
      maxLength: { type: 'xsd:long', minOccurs: '0' }
      minValue: { type: 'xsd:double', minOccurs: '0' }
      maxValue: { type: 'xsd:double', minOccurs: '0' }
      defaultChecked: { type: 'xsd:boolean', minOccurs: '0' }
      defaultValue: { type: 'xsd:string', minOccurs: '0' }
      isFormula: { type: 'xsd:boolean', minOccurs: '0' }
      defaultSelection: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dynamicDefault: { type: 'setupCustomTyp:CustomizationDynamicDefault', minOccurs: '0' }
      sourceList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFilterBy: { type: 'platformCore:RecordRef', minOccurs: '0' }
      appliesToInventory: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToNonInventory: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToService: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToOtherCharge: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToGroup: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToKit: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToItemAssembly: { type: 'xsd:boolean', minOccurs: '0' }
      availableToSso: { type: 'xsd:boolean', minOccurs: '0' }
      itemSubType: { type: 'setupCustomTyp:ItemCustomFieldItemSubType', minOccurs: '0' }
      filterList: { type: 'setupCustom:ItemCustomFieldFilterList', minOccurs: '0' }
      appliesToPriceList: { type: 'xsd:boolean', minOccurs: '0' }
      accessLevel: { type: 'setupCustomTyp:CustomizationAccessLevel', minOccurs: '0' }
      searchLevel: { type: 'setupCustomTyp:CustomizationSearchLevel', minOccurs: '0' }
      roleAccessList: { type: 'setupCustom:CustomFieldRoleAccessList', minOccurs: '0' }
      deptAccessList: { type: 'setupCustom:CustomFieldDepartmentAccessList', minOccurs: '0' }
      subAccessList: { type: 'setupCustom:CustomFieldSubAccessList', minOccurs: '0' }
      translationsList: { type: 'setupCustom:CustomFieldTranslationsList', minOccurs: '0' }
  ItemCustomFieldFilter:
    elements:
      fldFilter: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fldFilterChecked: { type: 'xsd:boolean', minOccurs: '0' }
      fldFilterCompareType: { type: 'setupCustomTyp:CustomizationFilterCompareType', minOccurs: '0' }
      fldFilterVal: { type: 'xsd:string', minOccurs: '0' }
      fldFilterSelList: { type: 'setupCustom:FldFilterSelList', minOccurs: '0' }
      fldFilterNotNull: { type: 'xsd:boolean', minOccurs: '0' }
  ItemCustomFieldFilterList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      filter: { type: 'setupCustom:ItemCustomFieldFilter', minOccurs: '0', maxOccurs: 'unbounded' }
  TransactionBodyCustomField:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      label: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fieldType: { type: 'setupCustomTyp:CustomizationFieldType', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      selectRecordType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeValue: { type: 'xsd:boolean', minOccurs: '0' }
      showInList: { type: 'xsd:boolean', minOccurs: '0' }
      globalSearch: { type: 'xsd:boolean', minOccurs: '0' }
      isParent: { type: 'xsd:boolean', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subtab: { type: 'platformCore:RecordRef', minOccurs: '0' }
      availableToSso: { type: 'xsd:boolean', minOccurs: '0' }
      displayType: { type: 'setupCustomTyp:CustomizationDisplayType', minOccurs: '0' }
      displayWidth: { type: 'xsd:long', minOccurs: '0' }
      displayHeight: { type: 'xsd:long', minOccurs: '0' }
      help: { type: 'xsd:string', minOccurs: '0' }
      parentSubtab: { type: 'platformCore:RecordRef', minOccurs: '0' }
      linkText: { type: 'xsd:string', minOccurs: '0' }
      isMandatory: { type: 'xsd:boolean', minOccurs: '0' }
      checkSpelling: { type: 'xsd:boolean', minOccurs: '0' }
      maxLength: { type: 'xsd:long', minOccurs: '0' }
      minValue: { type: 'xsd:double', minOccurs: '0' }
      maxValue: { type: 'xsd:double', minOccurs: '0' }
      defaultChecked: { type: 'xsd:boolean', minOccurs: '0' }
      defaultValue: { type: 'xsd:string', minOccurs: '0' }
      isFormula: { type: 'xsd:boolean', minOccurs: '0' }
      defaultSelection: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dynamicDefault: { type: 'setupCustomTyp:CustomizationDynamicDefault', minOccurs: '0' }
      sourceList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFilterBy: { type: 'platformCore:RecordRef', minOccurs: '0' }
      bodyPurchase: { type: 'xsd:boolean', minOccurs: '0' }
      bodySale: { type: 'xsd:boolean', minOccurs: '0' }
      bodyOpportunity: { type: 'xsd:boolean', minOccurs: '0' }
      bodyJournal: { type: 'xsd:boolean', minOccurs: '0' }
      bodyExpenseReport: { type: 'xsd:boolean', minOccurs: '0' }
      bodyStore: { type: 'xsd:boolean', minOccurs: '0' }
      bodyTransferOrder: { type: 'xsd:boolean', minOccurs: '0' }
      bodyItemReceipt: { type: 'xsd:boolean', minOccurs: '0' }
      bodyItemReceiptOrder: { type: 'xsd:boolean', minOccurs: '0' }
      bodyItemFulfillment: { type: 'xsd:boolean', minOccurs: '0' }
      bodyItemFulfillmentOrder: { type: 'xsd:boolean', minOccurs: '0' }
      bodyInventoryAdjustment: { type: 'xsd:boolean', minOccurs: '0' }
      bodyBTegata: { type: 'xsd:boolean', minOccurs: '0' }
      bodyAssemblyBuild: { type: 'xsd:boolean', minOccurs: '0' }
      bodyPrintFlag: { type: 'xsd:boolean', minOccurs: '0' }
      bodyPickingTicket: { type: 'xsd:boolean', minOccurs: '0' }
      bodyPrintPackingSlip: { type: 'xsd:boolean', minOccurs: '0' }
      bodyCustomerPayment: { type: 'xsd:boolean', minOccurs: '0' }
      bodyVendorPayment: { type: 'xsd:boolean', minOccurs: '0' }
      bodyDeposit: { type: 'xsd:boolean', minOccurs: '0' }
      bodyBom: { type: 'xsd:boolean', minOccurs: '0' }
      bodyPrintStatement: { type: 'xsd:boolean', minOccurs: '0' }
      filterList: { type: 'setupCustom:TransactionBodyCustomFieldFilterList', minOccurs: '0' }
      accessLevel: { type: 'setupCustomTyp:CustomizationAccessLevel', minOccurs: '0' }
      searchLevel: { type: 'setupCustomTyp:CustomizationSearchLevel', minOccurs: '0' }
      roleAccessList: { type: 'setupCustom:CustomFieldRoleAccessList', minOccurs: '0' }
      deptAccessList: { type: 'setupCustom:CustomFieldDepartmentAccessList', minOccurs: '0' }
      subAccessList: { type: 'setupCustom:CustomFieldSubAccessList', minOccurs: '0' }
      translationsList: { type: 'setupCustom:CustomFieldTranslationsList', minOccurs: '0' }
  TransactionBodyCustomFieldFilter:
    elements:
      fldFilter: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fldFilterChecked: { type: 'xsd:boolean', minOccurs: '0' }
      fldFilterCompareType: { type: 'setupCustomTyp:CustomizationFilterCompareType', minOccurs: '0' }
      fldFilterVal: { type: 'xsd:string', minOccurs: '0' }
      fldFilterSelList: { type: 'setupCustom:FldFilterSelList', minOccurs: '0' }
      fldFilterNotNull: { type: 'xsd:boolean', minOccurs: '0' }
  TransactionBodyCustomFieldFilterList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      filter: { type: 'setupCustom:TransactionBodyCustomFieldFilter', minOccurs: '0', maxOccurs: 'unbounded' }
  TransactionColumnCustomField:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      label: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fieldType: { type: 'setupCustomTyp:CustomizationFieldType', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      selectRecordType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeValue: { type: 'xsd:boolean', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      availableToSso: { type: 'xsd:boolean', minOccurs: '0' }
      displayType: { type: 'setupCustomTyp:CustomizationDisplayType', minOccurs: '0' }
      displayWidth: { type: 'xsd:long', minOccurs: '0' }
      displayHeight: { type: 'xsd:long', minOccurs: '0' }
      help: { type: 'xsd:string', minOccurs: '0' }
      linkText: { type: 'xsd:string', minOccurs: '0' }
      isMandatory: { type: 'xsd:boolean', minOccurs: '0' }
      maxLength: { type: 'xsd:long', minOccurs: '0' }
      minValue: { type: 'xsd:double', minOccurs: '0' }
      maxValue: { type: 'xsd:double', minOccurs: '0' }
      defaultChecked: { type: 'xsd:boolean', minOccurs: '0' }
      defaultValue: { type: 'xsd:string', minOccurs: '0' }
      isFormula: { type: 'xsd:boolean', minOccurs: '0' }
      defaultSelection: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dynamicDefault: { type: 'setupCustomTyp:CustomizationDynamicDefault', minOccurs: '0' }
      sourceList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFilterBy: { type: 'platformCore:RecordRef', minOccurs: '0' }
      colExpense: { type: 'xsd:boolean', minOccurs: '0' }
      colPurchase: { type: 'xsd:boolean', minOccurs: '0' }
      colSale: { type: 'xsd:boolean', minOccurs: '0' }
      colOpportunity: { type: 'xsd:boolean', minOccurs: '0' }
      colStore: { type: 'xsd:boolean', minOccurs: '0' }
      colStoreHidden: { type: 'xsd:boolean', minOccurs: '0' }
      colJournal: { type: 'xsd:boolean', minOccurs: '0' }
      colBuild: { type: 'xsd:boolean', minOccurs: '0' }
      colExpenseReport: { type: 'xsd:boolean', minOccurs: '0' }
      colTime: { type: 'xsd:boolean', minOccurs: '0' }
      colTransferOrder: { type: 'xsd:boolean', minOccurs: '0' }
      colTimeGroup: { type: 'xsd:boolean', minOccurs: '0' }
      colItemReceipt: { type: 'xsd:boolean', minOccurs: '0' }
      colItemReceiptOrder: { type: 'xsd:boolean', minOccurs: '0' }
      colItemFulfillment: { type: 'xsd:boolean', minOccurs: '0' }
      colItemFulfillmentOrder: { type: 'xsd:boolean', minOccurs: '0' }
      colPrintFlag: { type: 'xsd:boolean', minOccurs: '0' }
      colPickingTicket: { type: 'xsd:boolean', minOccurs: '0' }
      colPackingSlip: { type: 'xsd:boolean', minOccurs: '0' }
      colReturnForm: { type: 'xsd:boolean', minOccurs: '0' }
      colStoreWithGroups: { type: 'xsd:boolean', minOccurs: '0' }
      colGroupOnInvoices: { type: 'xsd:boolean', minOccurs: '0' }
      colKitItem: { type: 'xsd:boolean', minOccurs: '0' }
      filterList: { type: 'setupCustom:TransactionColumnCustomFieldFilterList', minOccurs: '0' }
      accessLevel: { type: 'setupCustomTyp:CustomizationAccessLevel', minOccurs: '0' }
      searchLevel: { type: 'setupCustomTyp:CustomizationSearchLevel', minOccurs: '0' }
      roleAccessList: { type: 'setupCustom:CustomFieldRoleAccessList', minOccurs: '0' }
      deptAccessList: { type: 'setupCustom:CustomFieldDepartmentAccessList', minOccurs: '0' }
      subAccessList: { type: 'setupCustom:CustomFieldSubAccessList', minOccurs: '0' }
      translationsList: { type: 'setupCustom:CustomFieldTranslationsList', minOccurs: '0' }
  TransactionColumnCustomFieldFilter:
    elements:
      fldFilter: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fldFilterChecked: { type: 'xsd:boolean', minOccurs: '0' }
      fldFilterCompareType: { type: 'setupCustomTyp:CustomizationFilterCompareType', minOccurs: '0' }
      fldFilterVal: { type: 'xsd:string', minOccurs: '0' }
      fldFilterSelList: { type: 'setupCustom:FldFilterSelList', minOccurs: '0' }
      fldFilterNotNull: { type: 'xsd:boolean', minOccurs: '0' }
  TransactionColumnCustomFieldFilterList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      filter: { type: 'setupCustom:TransactionColumnCustomFieldFilter', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemOptionCustomField:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      label: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fieldType: { type: 'setupCustomTyp:CustomizationFieldType', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      selectRecordType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeValue: { type: 'xsd:boolean', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      displayType: { type: 'setupCustomTyp:CustomizationDisplayType', minOccurs: '0' }
      displayWidth: { type: 'xsd:long', minOccurs: '0' }
      displayHeight: { type: 'xsd:long', minOccurs: '0' }
      help: { type: 'xsd:string', minOccurs: '0' }
      linkText: { type: 'xsd:string', minOccurs: '0' }
      isMandatory: { type: 'xsd:boolean', minOccurs: '0' }
      maxLength: { type: 'xsd:long', minOccurs: '0' }
      minValue: { type: 'xsd:double', minOccurs: '0' }
      maxValue: { type: 'xsd:double', minOccurs: '0' }
      defaultChecked: { type: 'xsd:boolean', minOccurs: '0' }
      defaultValue: { type: 'xsd:string', minOccurs: '0' }
      isFormula: { type: 'xsd:boolean', minOccurs: '0' }
      defaultSelection: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dynamicDefault: { type: 'setupCustomTyp:CustomizationDynamicDefault', minOccurs: '0' }
      sourceList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFilterBy: { type: 'platformCore:RecordRef', minOccurs: '0' }
      colPurchase: { type: 'xsd:boolean', minOccurs: '0' }
      colSale: { type: 'xsd:boolean', minOccurs: '0' }
      colOpportunity: { type: 'xsd:boolean', minOccurs: '0' }
      colStore: { type: 'xsd:boolean', minOccurs: '0' }
      colStoreHidden: { type: 'xsd:boolean', minOccurs: '0' }
      colTransferOrder: { type: 'xsd:boolean', minOccurs: '0' }
      colAllItems: { type: 'xsd:boolean', minOccurs: '0' }
      itemsList: { type: 'setupCustom:ItemsList', minOccurs: '0' }
      colKitItem: { type: 'xsd:boolean', minOccurs: '0' }
      filterList: { type: 'setupCustom:ItemOptionCustomFieldFilterList', minOccurs: '0' }
      colOptionLabel: { type: 'xsd:string', minOccurs: '0' }
      accessLevel: { type: 'setupCustomTyp:CustomizationAccessLevel', minOccurs: '0' }
      searchLevel: { type: 'setupCustomTyp:CustomizationSearchLevel', minOccurs: '0' }
      roleAccessList: { type: 'setupCustom:CustomFieldRoleAccessList', minOccurs: '0' }
      deptAccessList: { type: 'setupCustom:CustomFieldDepartmentAccessList', minOccurs: '0' }
      subAccessList: { type: 'setupCustom:CustomFieldSubAccessList', minOccurs: '0' }
      translationsList: { type: 'setupCustom:CustomFieldTranslationsList', minOccurs: '0' }
  ItemsList:
    elements:
      items: { type: 'platformCore:RecordRef', maxOccurs: 'unbounded' }
  ItemOptionCustomFieldFilter:
    elements:
      fldFilter: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fldFilterChecked: { type: 'xsd:boolean', minOccurs: '0' }
      fldFilterCompareType: { type: 'setupCustomTyp:CustomizationFilterCompareType', minOccurs: '0' }
      fldFilterVal: { type: 'xsd:string', minOccurs: '0' }
      fldFilterSelList: { type: 'setupCustom:FldFilterSelList', minOccurs: '0' }
      fldFilterNotNull: { type: 'xsd:boolean', minOccurs: '0' }
  ItemOptionCustomFieldFilterList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      filter: { type: 'setupCustom:ItemOptionCustomFieldFilter', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomRecordCustomField:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      label: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fieldType: { type: 'setupCustomTyp:CustomizationFieldType', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      selectRecordType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeValue: { type: 'xsd:boolean', minOccurs: '0' }
      showInList: { type: 'xsd:boolean', minOccurs: '0' }
      globalSearch: { type: 'xsd:boolean', minOccurs: '0' }
      isParent: { type: 'xsd:boolean', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subtab: { type: 'platformCore:RecordRef', minOccurs: '0' }
      displayType: { type: 'setupCustomTyp:CustomizationDisplayType', minOccurs: '0' }
      displayWidth: { type: 'xsd:long', minOccurs: '0' }
      displayHeight: { type: 'xsd:long', minOccurs: '0' }
      help: { type: 'xsd:string', minOccurs: '0' }
      parentSubtab: { type: 'platformCore:RecordRef', minOccurs: '0' }
      linkText: { type: 'xsd:string', minOccurs: '0' }
      isMandatory: { type: 'xsd:boolean', minOccurs: '0' }
      checkSpelling: { type: 'xsd:boolean', minOccurs: '0' }
      maxLength: { type: 'xsd:long', minOccurs: '0' }
      minValue: { type: 'xsd:double', minOccurs: '0' }
      maxValue: { type: 'xsd:double', minOccurs: '0' }
      defaultChecked: { type: 'xsd:boolean', minOccurs: '0' }
      defaultValue: { type: 'xsd:string', minOccurs: '0' }
      isFormula: { type: 'xsd:boolean', minOccurs: '0' }
      defaultSelection: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dynamicDefault: { type: 'setupCustomTyp:CustomizationDynamicDefault', minOccurs: '0' }
      sourceList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourcefilterby: { type: 'platformCore:RecordRef', minOccurs: '0' }
      recType: { type: 'xsd:string', minOccurs: '0' }
      roleRestrict: { type: 'xsd:boolean', minOccurs: '0' }
      filterList: { type: 'setupCustom:CustomRecordCustomFieldFilterList', minOccurs: '0' }
      accessLevel: { type: 'setupCustomTyp:CustomizationAccessLevel', minOccurs: '0' }
      searchLevel: { type: 'setupCustomTyp:CustomizationSearchLevel', minOccurs: '0' }
      roleAccessList: { type: 'setupCustom:CustomFieldRoleAccessList', minOccurs: '0' }
      deptAccessList: { type: 'setupCustom:CustomFieldDepartmentAccessList', minOccurs: '0' }
      subAccessList: { type: 'setupCustom:CustomFieldSubAccessList', minOccurs: '0' }
      translationsList: { type: 'setupCustom:CustomFieldTranslationsList', minOccurs: '0' }
  CustomRecordCustomFieldFilter:
    elements:
      fldFilter: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fldFilterChecked: { type: 'xsd:boolean', minOccurs: '0' }
      fldFilterCompareType: { type: 'setupCustomTyp:CustomizationFilterCompareType', minOccurs: '0' }
      fldFilterVal: { type: 'xsd:string', minOccurs: '0' }
      fldFilterSelList: { type: 'setupCustom:FldFilterSelList', minOccurs: '0' }
      fldFilterNotNull: { type: 'xsd:boolean', minOccurs: '0' }
  CustomRecordCustomFieldFilterList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      filter: { type: 'setupCustom:CustomRecordCustomFieldFilter', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomFieldRoleAccess:
    elements:
      role: { type: 'platformCore:RecordRef', minOccurs: '0' }
      accessLevel: { type: 'setupCustomTyp:CustomizationAccessLevel', minOccurs: '0' }
      searchLevel: { type: 'setupCustomTyp:CustomizationSearchLevel', minOccurs: '0' }
  CustomFieldRoleAccessList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      roleAccess: { type: 'setupCustom:CustomFieldRoleAccess', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomFieldDepartmentAccess:
    elements:
      dept: { type: 'platformCore:RecordRef', minOccurs: '0' }
      accessLevel: { type: 'setupCustomTyp:CustomizationAccessLevel', minOccurs: '0' }
      searchLevel: { type: 'setupCustomTyp:CustomizationSearchLevel', minOccurs: '0' }
  CustomFieldDepartmentAccessList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      deptAccess: { type: 'setupCustom:CustomFieldDepartmentAccess', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomFieldSubAccess:
    elements:
      sub: { type: 'platformCore:RecordRef', minOccurs: '0' }
      accessLevel: { type: 'setupCustomTyp:CustomizationAccessLevel', minOccurs: '0' }
      searchLevel: { type: 'setupCustomTyp:CustomizationSearchLevel', minOccurs: '0' }
  CustomFieldSubAccessList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      subAccess: { type: 'setupCustom:CustomFieldSubAccess', minOccurs: '0', maxOccurs: 'unbounded' }
  LanguageValue:
    elements:
      locale: { type: 'platformCommonTyp:Language', minOccurs: '0' }
      value: { type: 'xsd:string', minOccurs: '0' }
  LanguageValueList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      languageValue: { type: 'setupCustom:LanguageValue', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomFieldTranslations:
    elements:
      locale: { type: 'platformCommonTyp:Language', minOccurs: '0' }
      localeDescription: { type: 'xsd:string', minOccurs: '0' }
      label: { type: 'xsd:string', minOccurs: '0' }
      help: { type: 'xsd:string', minOccurs: '0' }
  CustomFieldTranslationsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      translations: { type: 'setupCustom:CustomFieldTranslations', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemNumberCustomField:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
    elements:
      label: { type: 'xsd:string', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      fieldType: { type: 'setupCustomTyp:CustomizationFieldType', minOccurs: '0' }
      selectRecordType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      storeValue: { type: 'xsd:boolean', minOccurs: '0' }
      showInList: { type: 'xsd:boolean', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      displayType: { type: 'setupCustomTyp:CustomizationDisplayType', minOccurs: '0' }
      displayWidth: { type: 'xsd:long', minOccurs: '0' }
      displayHeight: { type: 'xsd:long', minOccurs: '0' }
      help: { type: 'xsd:string', minOccurs: '0' }
      linkText: { type: 'xsd:string', minOccurs: '0' }
      isMandatory: { type: 'xsd:boolean', minOccurs: '0' }
      checkSpelling: { type: 'xsd:boolean', minOccurs: '0' }
      maxLength: { type: 'xsd:long', minOccurs: '0' }
      minValue: { type: 'xsd:double', minOccurs: '0' }
      maxValue: { type: 'xsd:double', minOccurs: '0' }
      defaultChecked: { type: 'xsd:boolean', minOccurs: '0' }
      defaultValue: { type: 'xsd:string', minOccurs: '0' }
      isFormula: { type: 'xsd:boolean', minOccurs: '0' }
      defaultSelection: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dynamicDefault: { type: 'setupCustomTyp:CustomizationDynamicDefault', minOccurs: '0' }
      sourceList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      sourceFilterBy: { type: 'platformCore:RecordRef', minOccurs: '0' }
      accessLevel: { type: 'setupCustomTyp:CustomizationAccessLevel', minOccurs: '0' }
      searchLevel: { type: 'setupCustomTyp:CustomizationSearchLevel', minOccurs: '0' }
      filterList: { type: 'setupCustom:ItemNumberCustomFieldFilterList', minOccurs: '0' }
      roleAccessList: { type: 'setupCustom:CustomFieldRoleAccessList', minOccurs: '0' }
      deptAccessList: { type: 'setupCustom:CustomFieldDepartmentAccessList', minOccurs: '0' }
      appliesToAllItems: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToSerialized: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToLots: { type: 'xsd:boolean', minOccurs: '0' }
      appliesToGiftCerts: { type: 'xsd:boolean', minOccurs: '0' }
      itemsList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      translationsList: { type: 'setupCustom:CustomFieldTranslationsList', minOccurs: '0' }
  ItemNumberCustomFieldFilter:
    elements:
      fldFilter: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fldFilterChecked: { type: 'xsd:boolean', minOccurs: '0' }
      fldFilterCompareType: { type: 'setupCustomTyp:CustomizationFilterCompareType', minOccurs: '0' }
      fldFilterVal: { type: 'xsd:string', minOccurs: '0' }
      fldFilterNotNull: { type: 'xsd:boolean', minOccurs: '0' }
      fldfilterNull: { type: 'xsd:boolean', minOccurs: '0' }
      fldCompareField: { type: 'platformCore:RecordRef', minOccurs: '0' }
  ItemNumberCustomFieldFilterList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      filter: { type: 'setupCustom:ItemNumberCustomFieldFilter', minOccurs: '0', maxOccurs: 'unbounded' }
  CustomListSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:CustomListSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  CustomListSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:CustomListSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  AppDefinition:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      packagesList: { type: 'setupCustom:AppDefinitionPackagesList', minOccurs: '0' }
  AppDefinitionPackages:
    abstract: "true"
  AppDefinitionPackagesList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      packages: { type: 'setupCustom:AppDefinitionPackages', minOccurs: '0', maxOccurs: 'unbounded' }
  AppDefinitionSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:AppDefinitionSearchBasic', minOccurs: '0' }
      appPackageJoin: { type: 'platformCommon:AppPackageSearchBasic', minOccurs: '0' }
      creatorJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  AppDefinitionSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'setupCustom:AppDefinitionSearch', minOccurs: '0' }
      columns: { type: 'setupCustom:AppDefinitionSearchRow', minOccurs: '0' }
  AppDefinitionSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:AppDefinitionSearchRowBasic', minOccurs: '0' }
      appPackageJoin: { type: 'platformCommon:AppPackageSearchRowBasic', minOccurs: '0' }
      creatorJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  AppPackage:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      appDefinition: { type: 'platformCore:RecordRef', minOccurs: '0' }
      version: { type: 'xsd:string', minOccurs: '0' }
      packageFile: { type: 'platformCore:RecordRef', minOccurs: '0' }
      bundle: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
  AppPackageSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:AppPackageSearchBasic', minOccurs: '0' }
      appDefinitionJoin: { type: 'platformCommon:AppDefinitionSearchBasic', minOccurs: '0' }
      creatorJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      packageFileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  AppPackageSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'setupCustom:AppPackageSearch', minOccurs: '0' }
      columns: { type: 'setupCustom:AppPackageSearchRow', minOccurs: '0' }
  AppPackageSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:AppPackageSearchRowBasic', minOccurs: '0' }
      appDefinitionJoin: { type: 'platformCommon:AppDefinitionSearchRowBasic', minOccurs: '0' }
      creatorJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      packageFileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
