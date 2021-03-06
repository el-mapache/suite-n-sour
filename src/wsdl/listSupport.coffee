exports.complexTypes =
  SupportCase:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      escalationMessage: { type: 'xsd:string', minOccurs: '0' }
      lastReopenedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      endDate: { type: 'xsd:dateTime', minOccurs: '0' }
      incomingMessage: { type: 'xsd:string', minOccurs: '0' }
      insertSolution: { type: 'platformCore:RecordRef', minOccurs: '0' }
      outgoingMessage: { type: 'xsd:string', minOccurs: '0' }
      searchSolution: { type: 'xsd:string', minOccurs: '0' }
      emailForm: { type: 'xsd:boolean', minOccurs: '0' }
      newSolutionFromMsg: { type: 'xsd:string', minOccurs: '0' }
      internalOnly: { type: 'xsd:boolean', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      caseNumber: { type: 'xsd:string', minOccurs: '0' }
      startDate: { type: 'xsd:dateTime', minOccurs: '0' }
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastMessageDate: { type: 'xsd:dateTime', minOccurs: '0' }
      company: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      contact: { type: 'platformCore:RecordRef', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
      product: { type: 'platformCore:RecordRef', minOccurs: '0' }
      module: { type: 'platformCore:RecordRef', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      serialNumber: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inboundEmail: { type: 'xsd:string', minOccurs: '0' }
      issue: { type: 'platformCore:RecordRef', minOccurs: '0' }
      status: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      priority: { type: 'platformCore:RecordRef', minOccurs: '0' }
      origin: { type: 'platformCore:RecordRef', minOccurs: '0' }
      category: { type: 'platformCore:RecordRef', minOccurs: '0' }
      assigned: { type: 'platformCore:RecordRef', minOccurs: '0' }
      helpDesk: { type: 'xsd:boolean', minOccurs: '0' }
      emailEmployeesList: { type: 'listSupport:EmailEmployeesList', minOccurs: '0' }
      escalateToList: { type: 'listSupport:SupportCaseEscalateToList', minOccurs: '0' }
      timeItemList: { type: 'listSupport:SupportCaseTimeItemList', minOccurs: '0' }
      solutionsList: { type: 'listSupport:SupportCaseSolutionsList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  EmailEmployeesList:
    elements:
      emailEmployees: { type: 'platformCore:RecordRef', maxOccurs: 'unbounded' }
  SupportCaseEscalateTo:
    elements:
      escalatee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      phone: { type: 'xsd:string', minOccurs: '0' }
  SupportCaseEscalateToList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      escalateTo: { type: 'listSupport:SupportCaseEscalateTo', minOccurs: '0', maxOccurs: 'unbounded' }
  SupportCaseSolutions:
    elements:
      solution: { type: 'platformCore:RecordRef', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      dateApplied: { type: 'xsd:dateTime', minOccurs: '0' }
  SupportCaseSolutionsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      solutions: { type: 'listSupport:SupportCaseSolutions', minOccurs: '0', maxOccurs: 'unbounded' }
  SupportCaseTimeItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      timeItem: { type: 'platformCommon:TimeItem', minOccurs: '0', maxOccurs: 'unbounded' }
  SupportCaseSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:SupportCaseSearchBasic', minOccurs: '0' }
      contactJoin: { type: 'platformCommon:ContactSearchBasic', minOccurs: '0' }
      customerJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      employeeJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      issueJoin: { type: 'platformCommon:IssueSearchBasic', minOccurs: '0' }
      itemJoin: { type: 'platformCommon:ItemSearchBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchBasic', minOccurs: '0' }
      timeJoin: { type: 'platformCommon:TimeBillSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  SupportCaseSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listSupport:SupportCaseSearch', minOccurs: '0' }
      columns: { type: 'listSupport:SupportCaseSearchRow', minOccurs: '0' }
  SupportCaseSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:SupportCaseSearchRowBasic', minOccurs: '0' }
      contactJoin: { type: 'platformCommon:ContactSearchRowBasic', minOccurs: '0' }
      customerJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      employeeJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      issueJoin: { type: 'platformCommon:IssueSearchRowBasic', minOccurs: '0' }
      itemJoin: { type: 'platformCommon:ItemSearchRowBasic', minOccurs: '0' }
      messagesJoin: { type: 'platformCommon:MessageSearchRowBasic', minOccurs: '0' }
      timeJoin: { type: 'platformCommon:TimeBillSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  SupportCaseStatus:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      stage: { type: 'listSupportTyp:SupportCaseStatusStage', minOccurs: '0' }
      caseOnHold: { type: 'xsd:boolean', minOccurs: '0' }
      autoCloseCase: { type: 'xsd:boolean', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  SupportCaseType:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  SupportCaseOrigin:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  SupportCaseIssue:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  SupportCasePriority:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      insertBefore: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
  Solution:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      solutionCode: { type: 'xsd:string', minOccurs: '0' }
      title: { type: 'xsd:string', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      status: { type: 'listSupportTyp:SolutionStatus', minOccurs: '0' }
      displayOnline: { type: 'xsd:boolean', minOccurs: '0' }
      assigned: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      longDescription: { type: 'xsd:string', minOccurs: '0' }
      topicsList: { type: 'listSupport:SolutionTopicsList', minOccurs: '0' }
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      solutionsList: { type: 'listSupport:SolutionsList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  SolutionTopics:
    elements:
      topic: { type: 'platformCore:RecordRef', minOccurs: '0' }
  SolutionTopicsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      topics: { type: 'listSupport:SolutionTopics', minOccurs: '0', maxOccurs: 'unbounded' }
  Solutions:
    elements:
      solution: { type: 'platformCore:RecordRef', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
  SolutionsList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      solutions: { type: 'listSupport:Solutions', minOccurs: '0', maxOccurs: 'unbounded' }
  SolutionSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:SolutionSearchBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchBasic', minOccurs: '0' }
      relatedSolutionJoin: { type: 'platformCommon:SolutionSearchBasic', minOccurs: '0' }
      topicJoin: { type: 'platformCommon:TopicSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  SolutionSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listSupport:SolutionSearch', minOccurs: '0' }
      columns: { type: 'listSupport:SolutionSearchRow', minOccurs: '0' }
  SolutionSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:SolutionSearchRowBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchRowBasic', minOccurs: '0' }
      relatedSolutionJoin: { type: 'platformCommon:SolutionSearchRowBasic', minOccurs: '0' }
      topicJoin: { type: 'platformCommon:TopicSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
  Topic:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      title: { type: 'xsd:string', minOccurs: '0' }
      parentTopic: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      longDescription: { type: 'xsd:string', minOccurs: '0' }
      solutionList: { type: 'listSupport:TopicSolutionList', minOccurs: '0' }
  TopicSolution:
    elements:
      solution: { type: 'platformCore:RecordRef', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
  TopicSolutionList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      solution: { type: 'listSupport:TopicSolution', minOccurs: '0', maxOccurs: 'unbounded' }
  TopicSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:TopicSearchBasic', minOccurs: '0' }
      solutionJoin: { type: 'platformCommon:SolutionSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  TopicSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listSupport:TopicSearch', minOccurs: '0' }
      columns: { type: 'listSupport:TopicSearchRow', minOccurs: '0' }
  TopicSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:TopicSearchRowBasic', minOccurs: '0' }
      solutionJoin: { type: 'platformCommon:SolutionSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  Issue:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      issueNumber: { type: 'xsd:string', minOccurs: '0' }
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      issueType: { type: 'platformCore:RecordRef', minOccurs: '0' }
      product: { type: 'platformCore:RecordRef', minOccurs: '0' }
      module: { type: 'platformCore:RecordRef', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      productTeam: { type: 'platformCore:RecordRef', minOccurs: '0' }
      source: { type: 'platformCore:RecordRef', minOccurs: '0' }
      reportedBy: { type: 'platformCore:RecordRef', minOccurs: '0' }
      reproduce: { type: 'platformCore:RecordRef', minOccurs: '0' }
      duplicateOf: { type: 'platformCore:RecordRef', minOccurs: '0' }
      severity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      priority: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isShowStopper: { type: 'xsd:boolean', minOccurs: '0' }
      assigned: { type: 'platformCore:RecordRef', minOccurs: '0' }
      reviewer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isReviewed: { type: 'xsd:boolean', minOccurs: '0' }
      issueStatus: { type: 'platformCore:RecordRef', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      issueTagsList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      issueAbstract: { type: 'xsd:string', minOccurs: '0' }
      newDetails: { type: 'xsd:string', minOccurs: '0' }
      isOwner: { type: 'xsd:boolean', minOccurs: '0' }
      trackCode: { type: 'listSupportTyp:IssueTrackCode', minOccurs: '0' }
      emailAssignee: { type: 'xsd:boolean', minOccurs: '0' }
      emailEmployeesList: { type: 'listSupport:EmailEmployeesList', minOccurs: '0' }
      emailCellsList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      externalAbstract: { type: 'xsd:string', minOccurs: '0' }
      externalDetails: { type: 'xsd:string', minOccurs: '0' }
      brokenInVersionList: { type: 'listSupport:IssueVersionList', minOccurs: '0' }
      targetVersionList: { type: 'listSupport:IssueVersionList', minOccurs: '0' }
      fixedInVersionList: { type: 'listSupport:IssueVersionList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  IssueVersion:
    elements:
      primary: { type: 'xsd:boolean', minOccurs: '0' }
      version: { type: 'platformCore:RecordRef', minOccurs: '0' }
      build: { type: 'platformCore:RecordRef', minOccurs: '0' }
  IssueVersionList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      issueVersion: { type: 'listSupport:IssueVersion', minOccurs: '0', maxOccurs: 'unbounded' }
  IssueSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:IssueSearchBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchBasic', minOccurs: '0' }
      employeeJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchBasic', minOccurs: '0' }
  IssueSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'listSupport:IssueSearch', minOccurs: '0' }
      columns: { type: 'listSupport:IssueSearchRow', minOccurs: '0' }
  IssueSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:IssueSearchRowBasic', minOccurs: '0' }
      caseJoin: { type: 'platformCommon:SupportCaseSearchRowBasic', minOccurs: '0' }
      employeeJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
      userNotesJoin: { type: 'platformCommon:NoteSearchRowBasic', minOccurs: '0' }
