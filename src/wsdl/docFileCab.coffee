exports.complexTypes =
  File:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      attachFrom: { type: 'docFileCabTyp:FileAttachFrom', minOccurs: '0' }
      mediaTypeName: { type: 'xsd:string', minOccurs: '0' }
      fileType: { type: 'docFileCabTyp:MediaType', minOccurs: '0' }
      content: { type: 'xsd:base64Binary', minOccurs: '0' }
      folder: { type: 'platformCore:RecordRef', minOccurs: '0' }
      fileSize: { type: 'xsd:double', minOccurs: '0' }
      url: { type: 'xsd:string', minOccurs: '0' }
      urlComponent: { type: 'xsd:string', minOccurs: '0' }
      mediaFile: { type: 'platformCore:RecordRef', minOccurs: '0' }
      textFileEncoding: { type: 'docFileCabTyp:TextFileEncoding', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      encoding: { type: 'docFileCabTyp:FileEncoding', minOccurs: '0' }
      altTagCaption: { type: 'xsd:string', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      class: { type: 'xsd:string', minOccurs: '0' }
      bundleable: { type: 'xsd:boolean', minOccurs: '0' }
      department: { type: 'xsd:string', minOccurs: '0' }
      hideInBundle: { type: 'xsd:boolean', minOccurs: '0' }
      isPrivate: { type: 'xsd:boolean', minOccurs: '0' }
      owner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      caption: { type: 'xsd:string', minOccurs: '0' }
      storeDisplayThumbnail: { type: 'platformCore:RecordRef', minOccurs: '0' }
      siteDescription: { type: 'xsd:string', minOccurs: '0' }
      featuredDescription: { type: 'xsd:string', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      siteCategoryList: { type: 'docFileCab:FileSiteCategoryList', minOccurs: '0' }
  FileSiteCategory:
    elements:
      isDefault: { type: 'xsd:boolean', minOccurs: '0' }
      category: { type: 'platformCore:RecordRef', minOccurs: '0' }
      categoryDescription: { type: 'xsd:string', minOccurs: '0' }
      website: { type: 'platformCore:RecordRef', minOccurs: '0' }
  FileSiteCategoryList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      siteCategory: { type: 'docFileCab:FileSiteCategory', minOccurs: '0', maxOccurs: 'unbounded' }
  FileSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      shopperJoin: { type: 'platformCommon:CustomerSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  FileSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'docFileCab:FileSearch', minOccurs: '0' }
      columns: { type: 'docFileCab:FileSearchRow', minOccurs: '0' }
  FileSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      shopperJoin: { type: 'platformCommon:CustomerSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
  Folder:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      name: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      isInactive: { type: 'xsd:boolean', minOccurs: '0' }
      isPrivate: { type: 'xsd:boolean', minOccurs: '0' }
      bundleable: { type: 'xsd:boolean', minOccurs: '0' }
      hideInBundle: { type: 'xsd:boolean', minOccurs: '0' }
      isOnline: { type: 'xsd:boolean', minOccurs: '0' }
      group: { type: 'platformCore:RecordRef', minOccurs: '0' }
      parent: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
  FolderSearch:
    base: 'platformCore:SearchRecord'
    elements:
      basic: { type: 'platformCommon:FolderSearchBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchBasic', minOccurs: '0' }
  FolderSearchAdvanced:
    base: 'platformCore:SearchRecord'
    attributes:
      savedSearchId: { type: 'xsd:string' }
      savedSearchScriptId: { type: 'xsd:string' }
    elements:
      criteria: { type: 'docFileCab:FolderSearch', minOccurs: '0' }
      columns: { type: 'docFileCab:FolderSearchRow', minOccurs: '0' }
  FolderSearchRow:
    base: 'platformCore:SearchRow'
    elements:
      basic: { type: 'platformCommon:FolderSearchRowBasic', minOccurs: '0' }
      fileJoin: { type: 'platformCommon:FileSearchRowBasic', minOccurs: '0' }
      userJoin: { type: 'platformCommon:EmployeeSearchRowBasic', minOccurs: '0' }
