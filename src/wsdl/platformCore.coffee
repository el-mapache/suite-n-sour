exports.xmlns = 'urn:core_2012_1.platform.webservices.netsuite.com'
exports.complexTypes =
  Passport:
    elements:
      email: { type: 'xsd:string' }
      password: { type: 'xsd:string' }
      account: { type: 'xsd:string' }
      role: { type: 'platformCore:RecordRef', minOccurs: '0' }
  SsoPassport:
    elements:
      authenticationToken: { type: 'xsd:string' }
      partnerId: { type: 'xsd:string' }
      partnerAccount: { type: 'xsd:string', minOccurs: '0' }
  SsoCredentials:
    elements:
      email: { type: 'xsd:string' }
      password: { type: 'xsd:string' }
      account: { type: 'xsd:string' }
      role: { type: 'platformCore:RecordRef', minOccurs: '0' }
      authenticationToken: { type: 'xsd:string' }
      partnerId: { type: 'xsd:string' }
  ChangePassword:
    elements:
      currentPassword: { type: 'xsd:string' }
      newPassword: { type: 'xsd:string', minOccurs: '0' }
      newPassword2: { type: 'xsd:string', minOccurs: '0' }
      justThisAccount: { type: 'xsd:boolean', minOccurs: '0' }
  ChangeEmail:
    elements:
      currentPassword: { type: 'xsd:string' }
      newEmail: { type: 'xsd:string' }
      newEmail2: { type: 'xsd:string' }
      justThisAccount: { type: 'xsd:boolean', minOccurs: '0' }
  StatusDetail:
    attributes:
      type: { type: 'platformFaultTyp:StatusDetailType', default: 'ERROR' }
    elements:
      code: { type: 'platformFaultTyp:StatusDetailCodeType' }
      message: { type: 'xsd:string', minOccurs: '0' }
  Status:
    attributes:
      isSuccess: { type: 'xsd:boolean' }
    elements:
      statusDetail: { type: 'platformCore:StatusDetail', minOccurs: '0', maxOccurs: 'unbounded' }
  WsRole:
    elements:
      role: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isDefault: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      isLoggedInRole: { type: 'xsd:boolean', minOccurs: '0' }
  WsRoleList:
    elements:
      wsRole: { type: 'platformCore:WsRole', minOccurs: '0', maxOccurs: 'unbounded' }
  Record:
    elements:
      nullFieldList: { type: 'platformCore:NullField', minOccurs: '0', maxOccurs: '1' }
  NullField:
    elements:
      name: { type: 'xsd:string', minOccurs: '0', maxOccurs: 'unbounded' }
  SearchRecord:
    abstract: "true"
  SearchRow:
    abstract: "true"
  SearchResult:
    elements:
      status: { type: 'platformCore:Status'  }
      totalRecords: { type: 'xsd:int', minOccurs: '0' }
      pageSize: { type: 'xsd:int', minOccurs: '0' }
      totalPages: { type: 'xsd:int', minOccurs: '0' }
      pageIndex: { type: 'xsd:int', minOccurs: '0' }
      searchId: { type: 'xsd:string', minOccurs: '0' }
      recordList: { type: 'platformCore:RecordList' , minOccurs: '0' }
      searchRowList: { type: 'platformCore:SearchRowList' , minOccurs: '0' }
  AsyncStatusResult:
    elements:
      jobId: { type: 'xsd:string' }
      status: { type: 'platformCoreTyp:AsyncStatusType' }
      percentCompleted: { type: 'xsd:double' }
      estRemainingDuration: { type: 'xsd:double' }
  GetAllResult:
    elements:
      status: { type: 'platformCore:Status'  }
      totalRecords: { type: 'xsd:int', minOccurs: '0' }
      recordList: { type: 'platformCore:RecordList' , minOccurs: '0' }
  GetSavedSearchResult:
    elements:
      status: { type: 'platformCore:Status'  }
      totalRecords: { type: 'xsd:int', minOccurs: '0' }
      recordRefList: { type: 'platformCore:RecordRefList' , minOccurs: '0' }
  GetCustomizationIdResult:
    elements:
      status: { type: 'platformCore:Status'  }
      totalRecords: { type: 'xsd:int', minOccurs: '0' }
      customizationRefList: { type: 'platformCore:CustomizationRefList' , minOccurs: '0' }
  GetSelectValueResult:
    elements:
      status: { type: 'platformCore:Status'  }
      totalRecords: { type: 'xsd:int', minOccurs: '0' }
      totalPages: { type: 'xsd:int', minOccurs: '0' }
      baseRefList: { type: 'platformCore:BaseRefList' , minOccurs: '0' }
  RecordList:
    elements:
      record: { type: 'platformCore:Record', minOccurs: '0', maxOccurs: 'unbounded' }
  SearchRowList:
    elements:
      searchRow: { type: 'platformCore:SearchRow', minOccurs: '0', maxOccurs: 'unbounded' }
  RecordRefList:
    elements:
      recordRef: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: 'unbounded' }
  BaseRef:
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
  BaseRefList:
    elements:
      baseRef: { type: 'platformCore:BaseRef', minOccurs: '0', maxOccurs: 'unbounded' }
  RecordRef:
    base: 'platformCore:BaseRef'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
      type: { type: 'platformCoreTyp:RecordType' }
  Duration:
    elements:
      timeSpan: { type: 'xsd:double' }
      unit: { type: 'platformCoreTyp:DurationUnit' }
  CustomRecordRef:
    base: 'platformCore:BaseRef'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
      typeId: { type: 'xsd:string', use: 'required' }
  CustomizationRef:
    base: 'platformCore:BaseRef'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
      scriptId: { type: 'xsd:string' }
      type: { type: 'platformCoreTyp:RecordType' }
  CustomizationRefList:
    elements:
      customizationRef: { type: 'platformCore:CustomizationRef', minOccurs: '0', maxOccurs: 'unbounded' }
  InitializeRecord:
    elements:
      type: { type: 'platformCoreTyp:InitializeType', minOccurs: '1' }
      reference: { type: 'platformCore:InitializeRef', minOccurs: '0' }
      auxReference: { type: 'platformCore:InitializeAuxRef', minOccurs: '0' }
      referenceList: { type: 'platformCore:InitializeRefList', minOccurs: '0' }
  InitializeRef:
    base: 'platformCore:BaseRef'
    attributes:
      type: { type: 'platformCoreTyp:InitializeRefType' }
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
  InitializeRefList:
    elements:
      initializeRef: { type: 'platformCore:InitializeRef', minOccurs: '0', maxOccurs: 'unbounded' }
  InitializeAuxRef:
    base: 'platformCore:BaseRef'
    attributes:
      type: { type: 'platformCoreTyp:InitializeAuxRefType' }
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
  UpdateInviteeStatusReference:
    elements:
      eventId: { type: 'platformCore:RecordRef', minOccurs: '1' }
      responseCode: { type: 'platformCoreTyp:CalendarEventAttendeeResponse', minOccurs: '1' }
  GetAllRecord:
    attributes:
      recordType: { type: 'platformCoreTyp:GetAllRecordType' }
  GetSavedSearchRecord:
    attributes:
      searchType: { type: 'platformCoreTyp:SearchRecordType' }
  CustomizationType:
    attributes:
      getCustomizationType: { type: 'platformCoreTyp:GetCustomizationType' }
  ListOrRecordRef:
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
      typeId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
  CustomFieldRef:
    abstract: "true"
  LongCustomFieldRef:
    base: 'platformCore:CustomFieldRef'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      value: { type: 'xsd:long' }
  DoubleCustomFieldRef:
    base: 'platformCore:CustomFieldRef'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      value: { type: 'xsd:double' }
  BooleanCustomFieldRef:
    base: 'platformCore:CustomFieldRef'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      value: { type: 'xsd:boolean' }
  StringCustomFieldRef:
    base: 'platformCore:CustomFieldRef'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      value: { type: 'xsd:string' }
  DateCustomFieldRef:
    base: 'platformCore:CustomFieldRef'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      value: { type: 'xsd:dateTime' }
  SelectCustomFieldRef:
    base: 'platformCore:CustomFieldRef'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      value: { type: 'platformCore:ListOrRecordRef' }
  MultiSelectCustomFieldRef:
    base: 'platformCore:CustomFieldRef'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      value: { type: 'platformCore:ListOrRecordRef', maxOccurs: 'unbounded' }
  CustomFieldList:
    elements:
      customField: { type: 'platformCore:CustomFieldRef', minOccurs: '0', maxOccurs: 'unbounded' }
  SearchBooleanField:
    elements:
      searchValue: { type: 'xsd:boolean', minOccurs: '0' }
  SearchStringField:
    attributes:
      operator: { type: 'platformCoreTyp:SearchStringFieldOperator' }
    elements:
      searchValue: { type: 'xsd:string', minOccurs: '0' }
  SearchLongField:
    attributes:
      operator: { type: 'platformCoreTyp:SearchLongFieldOperator' }
    elements:
      searchValue: { type: 'xsd:long', minOccurs: '0' }
      searchValue2: { type: 'xsd:long', minOccurs: '0' }
  SearchTextNumberField:
    attributes:
      operator: { type: 'platformCoreTyp:SearchTextNumberFieldOperator' }
    elements:
      searchValue: { type: 'xsd:string', minOccurs: '0' }
      searchValue2: { type: 'xsd:string', minOccurs: '0' }
  SearchDoubleField:
    attributes:
      operator: { type: 'platformCoreTyp:SearchDoubleFieldOperator' }
    elements:
      searchValue: { type: 'xsd:double', minOccurs: '0' }
      searchValue2: { type: 'xsd:double', minOccurs: '0' }
  SearchDateField:
    attributes:
      operator: { type: 'platformCoreTyp:SearchDateFieldOperator' }
    elements:
      predefinedSearchValue: { type: 'platformCoreTyp:SearchDate', minOccurs: '0' }
      searchValue: { type: 'xsd:dateTime', minOccurs: '0' }
      searchValue2: { type: 'xsd:dateTime', minOccurs: '0' }
  SearchEnumMultiSelectField:
    attributes:
      operator: { type: 'platformCoreTyp:SearchEnumMultiSelectFieldOperator' }
    elements:
      searchValue: { type: 'xsd:string', minOccurs: '0', maxOccurs: 'unbounded' }
  SearchMultiSelectField:
    attributes:
      operator: { type: 'platformCoreTyp:SearchMultiSelectFieldOperator' }
    elements:
      searchValue: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: 'unbounded' }
  SearchCustomField:
    abstract: "true"
  SearchBooleanCustomField:
    base: 'platformCore:SearchCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      searchValue: { type: 'xsd:boolean', minOccurs: '0' }
  SearchStringCustomField:
    base: 'platformCore:SearchCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
      operator: { type: 'platformCoreTyp:SearchStringFieldOperator' }
    elements:
      searchValue: { type: 'xsd:string', minOccurs: '0' }
  SearchLongCustomField:
    base: 'platformCore:SearchCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
      operator: { type: 'platformCoreTyp:SearchLongFieldOperator' }
    elements:
      searchValue: { type: 'xsd:long', minOccurs: '0' }
      searchValue2: { type: 'xsd:long', minOccurs: '0' }
  SearchDoubleCustomField:
    base: 'platformCore:SearchCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
      operator: { type: 'platformCoreTyp:SearchDoubleFieldOperator' }
    elements:
      searchValue: { type: 'xsd:double', minOccurs: '0' }
      searchValue2: { type: 'xsd:double', minOccurs: '0' }
  SearchDateCustomField:
    base: 'platformCore:SearchCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
      operator: { type: 'platformCoreTyp:SearchDateFieldOperator' }
    elements:
      predefinedSearchValue: { type: 'platformCoreTyp:SearchDate', minOccurs: '0' }
      searchValue: { type: 'xsd:dateTime', minOccurs: '0' }
      searchValue2: { type: 'xsd:dateTime', minOccurs: '0' }
  SearchEnumMultiSelectCustomField:
    base: 'platformCore:SearchCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
      operator: { type: 'platformCoreTyp:SearchEnumMultiSelectFieldOperator' }
    elements:
      searchValue: { type: 'xsd:string', minOccurs: '0', maxOccurs: 'unbounded' }
  SearchMultiSelectCustomField:
    base: 'platformCore:SearchCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
      operator: { type: 'platformCoreTyp:SearchMultiSelectFieldOperator' }
    elements:
      searchValue: { type: 'platformCore:ListOrRecordRef', minOccurs: '0', maxOccurs: 'unbounded' }
  SearchCustomFieldList:
    elements:
      customField: { type: 'platformCore:SearchCustomField', minOccurs: '0', maxOccurs: 'unbounded' }
  SearchColumnField:
    elements:
      customLabel: { type: 'xsd:string', minOccurs: '0' }
  SearchColumnBooleanField:
    base: 'platformCore:SearchColumnField'
    elements:
      searchValue: { type: 'xsd:boolean', minOccurs: '0' }
  SearchColumnStringField:
    base: 'platformCore:SearchColumnField'
    elements:
      searchValue: { type: 'xsd:string', minOccurs: '0' }
  SearchColumnLongField:
    base: 'platformCore:SearchColumnField'
    elements:
      searchValue: { type: 'xsd:long', minOccurs: '0' }
  SearchColumnTextNumberField:
    base: 'platformCore:SearchColumnField'
    elements:
      searchValue: { type: 'xsd:string', minOccurs: '0' }
  SearchColumnDoubleField:
    base: 'platformCore:SearchColumnField'
    elements:
      searchValue: { type: 'xsd:double', minOccurs: '0' }
  SearchColumnDateField:
    base: 'platformCore:SearchColumnField'
    elements:
      searchValue: { type: 'xsd:dateTime', minOccurs: '0' }
  SearchColumnEnumSelectField:
    base: 'platformCore:SearchColumnField'
    elements:
      searchValue: { type: 'xsd:string', minOccurs: '0' }
  SearchColumnSelectField:
    base: 'platformCore:SearchColumnField'
    elements:
      searchValue: { type: 'platformCore:RecordRef', minOccurs: '0' }
  SearchColumnCustomField:
    elements:
      customLabel: { type: 'xsd:string', minOccurs: '0' }
  SearchColumnBooleanCustomField:
    base: 'platformCore:SearchColumnCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      searchValue: { type: 'xsd:boolean', minOccurs: '0' }
  SearchColumnStringCustomField:
    base: 'platformCore:SearchColumnCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      searchValue: { type: 'xsd:string', minOccurs: '0' }
  SearchColumnLongCustomField:
    base: 'platformCore:SearchColumnCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      searchValue: { type: 'xsd:long', minOccurs: '0' }
  SearchColumnDoubleCustomField:
    base: 'platformCore:SearchColumnCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      searchValue: { type: 'xsd:double', minOccurs: '0' }
  SearchColumnDateCustomField:
    base: 'platformCore:SearchColumnCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      searchValue: { type: 'xsd:dateTime', minOccurs: '0' }
  SearchColumnEnumMultiSelectCustomField:
    base: 'platformCore:SearchColumnCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      searchValue: { type: 'xsd:string', minOccurs: '0', maxOccurs: 'unbounded' }
  SearchColumnSelectCustomField:
    base: 'platformCore:SearchColumnCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      searchValue: { type: 'platformCore:ListOrRecordRef', minOccurs: '0' }
  SearchColumnMultiSelectCustomField:
    base: 'platformCore:SearchColumnCustomField'
    attributes:
      internalId: { type: 'xsd:string', use: 'required' }
    elements:
      searchValue: { type: 'platformCore:ListOrRecordRef', minOccurs: '0', maxOccurs: 'unbounded' }
  SearchColumnCustomFieldList:
    elements:
      customField: { type: 'platformCore:SearchColumnCustomField', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemAvailabilityFilter:
    elements:
      item: { type: 'platformCore:RecordRefList', minOccurs: '1', maxOccurs: '1' }
      lastQtyAvailableChange: { type: 'xsd:dateTime', minOccurs: '0', maxOccurs: '1' }
  ItemAvailability:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '1', maxOccurs: '1' }
      lastQtyAvailableChange: { type: 'xsd:dateTime', minOccurs: '0', maxOccurs: '1' }
      locationId: { type: 'platformCore:RecordRef', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      onHandValueMli: { type: 'xsd:double', minOccurs: '0' }
      reorderPoint: { type: 'xsd:double', minOccurs: '0' }
      preferredStockLevel: { type: 'xsd:double', minOccurs: '0' }
      quantityOnOrder: { type: 'xsd:double', minOccurs: '0' }
      quantityCommitted: { type: 'xsd:double', minOccurs: '0' }
      quantityBackOrdered: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
  ItemAvailabilityList:
    elements:
      itemAvailability: { type: 'platformCore:ItemAvailability', maxOccurs: 'unbounded' }
  GetItemAvailabilityResult:
    elements:
      status: { type: 'platformCore:Status' , minOccurs: '1' , maxOccurs: '1' }
      itemAvailabilityList: { type: 'platformCore:ItemAvailabilityList', minOccurs: '0', maxOccurs: '1' }
  BudgetExchangeRateFilter:
    elements:
      period: { type: 'platformCore:RecordRef', minOccurs: '1', maxOccurs: '1' }
      fromSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      toSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
  BudgetExchangeRate:
    elements:
      period: { type: 'platformCore:RecordRef', minOccurs: '1', maxOccurs: '1' }
      fromSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '1', maxOccurs: '1' }
      toSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '1', maxOccurs: '1' }
      currentRate: { type: 'xsd:double', minOccurs: '0', maxOccurs: '1' }
      averageRate: { type: 'xsd:double', minOccurs: '0', maxOccurs: '1' }
      historicalRate: { type: 'xsd:double', minOccurs: '0', maxOccurs: '1' }
  BudgetExchangeRateList:
    elements:
      budgetExchangeRate: { type: 'platformCore:BudgetExchangeRate', maxOccurs: 'unbounded' }
  GetBudgetExchangeRateResult:
    elements:
      status: { type: 'platformCore:Status' , minOccurs: '1' , maxOccurs: '1' }
      budgetExchangeRateList: { type: 'platformCore:BudgetExchangeRateList', minOccurs: '0', maxOccurs: '1' }
  ConsolidatedExchangeRateFilter:
    elements:
      period: { type: 'platformCore:RecordRef', minOccurs: '1', maxOccurs: '1' }
      fromSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      toSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
  ConsolidatedExchangeRate:
    elements:
      period: { type: 'platformCore:RecordRef', minOccurs: '1', maxOccurs: '1' }
      fromSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '1', maxOccurs: '1' }
      toSubsidiary: { type: 'platformCore:RecordRef', minOccurs: '1', maxOccurs: '1' }
      currentRate: { type: 'xsd:double', minOccurs: '0', maxOccurs: '1' }
      averageRate: { type: 'xsd:double', minOccurs: '0', maxOccurs: '1' }
      historicalRate: { type: 'xsd:double', minOccurs: '0', maxOccurs: '1' }
  ConsolidatedExchangeRateList:
    elements:
      consolidatedExchangeRate: { type: 'platformCore:ConsolidatedExchangeRate', maxOccurs: 'unbounded' }
  GetConsolidatedExchangeRateResult:
    elements:
      status: { type: 'platformCore:Status' , minOccurs: '1' , maxOccurs: '1' }
      consolidatedExchangeRateList: { type: 'platformCore:ConsolidatedExchangeRateList', minOccurs: '0', maxOccurs: '1' }
  CurrencyRateFilter:
    elements:
      baseCurrency: { type: 'platformCore:RecordRef', minOccurs: '1', maxOccurs: '1' }
      fromCurrency: { type: 'platformCore:RecordRef', minOccurs: '1', maxOccurs: '1' }
      effectiveDate: { type: 'xsd:dateTime', minOccurs: '0', maxOccurs: '1' }
  GetCurrencyRateResult:
    elements:
      status: { type: 'platformCore:Status' , minOccurs: '1' , maxOccurs: '1' }
      currencyRate: { type: 'xsd:double', minOccurs: '0', maxOccurs: '1' }
  PostingTransactionSummaryField:
    elements:
      period: { type: 'xsd:boolean', minOccurs: '0', maxOccurs: '1' }
      account: { type: 'xsd:boolean', minOccurs: '0', maxOccurs: '1' }
      parentItem: { type: 'xsd:boolean', minOccurs: '0', maxOccurs: '1' }
      item: { type: 'xsd:boolean', minOccurs: '0', maxOccurs: '1' }
      customer: { type: 'xsd:boolean', minOccurs: '0', maxOccurs: '1' }
      department: { type: 'xsd:boolean', minOccurs: '0', maxOccurs: '1' }
      class: { type: 'xsd:boolean', minOccurs: '0', maxOccurs: '1' }
      location: { type: 'xsd:boolean', minOccurs: '0', maxOccurs: '1' }
      subsidiary: { type: 'xsd:boolean', minOccurs: '0', maxOccurs: '1' }
  PostingTransactionSummaryFilter:
    elements:
      period: { type: 'platformCore:RecordRefList', minOccurs: '0', maxOccurs: '1' }
      account: { type: 'platformCore:RecordRefList', minOccurs: '0', maxOccurs: '1' }
      parentItem: { type: 'platformCore:RecordRefList', minOccurs: '0', maxOccurs: '1' }
      item: { type: 'platformCore:RecordRefList', minOccurs: '0', maxOccurs: '1' }
      customer: { type: 'platformCore:RecordRefList', minOccurs: '0', maxOccurs: '1' }
      department: { type: 'platformCore:RecordRefList', minOccurs: '0', maxOccurs: '1' }
      class: { type: 'platformCore:RecordRefList', minOccurs: '0', maxOccurs: '1' }
      location: { type: 'platformCore:RecordRefList', minOccurs: '0', maxOccurs: '1' }
      subsidiary: { type: 'platformCore:RecordRefList', minOccurs: '0', maxOccurs: '1' }
  PostingTransactionSummary:
    elements:
      period: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      parentItem: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      amount: { type: 'xsd:double', minOccurs: '1', maxOccurs: '1' }
  PostingTransactionSummaryList:
    elements:
      postingTransactionSummary: { type: 'platformCore:PostingTransactionSummary', maxOccurs: 'unbounded' }
  GetPostingTransactionSummaryResult:
    elements:
      status: { type: 'platformCore:Status' , minOccurs: '1' , maxOccurs: '1' }
      totalRecords: { type: 'xsd:int', minOccurs: '0' }
      pageSize: { type: 'xsd:int', minOccurs: '0' }
      totalPages: { type: 'xsd:int', minOccurs: '0' }
      pageIndex: { type: 'xsd:int', minOccurs: '0' }
      postingTransactionSummaryList: { type: 'platformCore:PostingTransactionSummaryList', minOccurs: '0', maxOccurs: '1' }
  GetSelectValueFieldDescription:
    elements:
      recordType: { type: 'platformCoreTyp:RecordType', minOccurs: '0', maxOccurs: '1' }
      customRecordType: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      sublist: { type: 'xsd:string', minOccurs: '0', maxOccurs: '1' }
      field: { type: 'xsd:string', minOccurs: '1', maxOccurs: '1' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
      filter: { type: 'platformCore:GetSelectValueFilter', minOccurs: '0', maxOccurs: '1' }
      filterByValueList: { type: 'platformCore:GetSelectFilterByFieldValueList', minOccurs: '0', maxOccurs: '1' }
  GetSelectValueFilter:
    attributes:
      operator: { type: 'platformCoreTyp:GetSelectValueFilterOperator', use: 'required' }
    elements:
      filterValue: { type: 'xsd:string', minOccurs: '1', maxOccurs: '1' }
  GetSelectFilterByFieldValueList:
    elements:
      filterBy: { type: 'platformCore:GetSelectFilterByFieldValue', minOccurs: '1', maxOccurs: 'unbounded' }
  GetSelectFilterByFieldValue:
    elements:
      sublist: { type: 'xsd:string', minOccurs: '0', maxOccurs: '1' }
      field: { type: 'xsd:string', minOccurs: '1', maxOccurs: '1' }
      internalId: { type: 'xsd:string', minOccurs: '1', maxOccurs: '1' }
  GetServerTimeResult:
    elements:
      status: { type: 'platformCore:Status' , minOccurs: '1' , maxOccurs: '1' }
      serverTime: { type: 'xsd:dateTime', minOccurs: '1', maxOccurs: '1' }
  DeletedRecord:
    elements:
      deletedDate: { type: 'xsd:dateTime', minOccurs: '0', maxOccurs: '1' }
      record: { type: 'platformCore:BaseRef', minOccurs: '0', maxOccurs: '1' }
  DeletedRecordList:
    elements:
      deletedRecord: { type: 'platformCore:DeletedRecord', minOccurs: '0', maxOccurs: 'unbounded' }
  GetDeletedResult:
    elements:
      status: { type: 'platformCore:Status'  }
      deletedRecordList: { type: 'platformCore:DeletedRecordList' , minOccurs: '0' }
  GetDeletedFilter:
    elements:
      deletedDate: { type: 'platformCore:SearchDateField', minOccurs: '0', maxOccurs: '1' }
      type: { type: 'platformCore:SearchEnumMultiSelectField', minOccurs: '0', maxOccurs: '1' }
  AttachReference:
    elements:
      attachTo: { type: 'platformCore:BaseRef', minOccurs: '1', maxOccurs: '1' }
  DetachReference:
    elements:
      detachFrom: { type: 'platformCore:BaseRef', minOccurs: '1', maxOccurs: '1' }
  AttachContactReference:
    base: 'platformCore:AttachReference'
    elements:
      contact: { type: 'platformCore:RecordRef', minOccurs: '1', maxOccurs: '1' }
      contactRole: { type: 'platformCore:RecordRef', minOccurs: '0', maxOccurs: '1' }
  AttachBasicReference:
    base: 'platformCore:AttachReference'
    elements:
      attachedRecord: { type: 'platformCore:BaseRef', minOccurs: '1', maxOccurs: '1' }
  DetachBasicReference:
    base: 'platformCore:DetachReference'
    elements:
      detachedRecord: { type: 'platformCore:BaseRef', minOccurs: '1', maxOccurs: '1' }
