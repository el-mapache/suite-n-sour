exports.complexTypes =
  PurchLandedCostList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      landedCost: { type: 'platformCommon:LandedCost', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorBill:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      approvalStatus: { type: 'platformCore:RecordRef', minOccurs: '0' }
      nextApprover: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vatRegNum: { type: 'xsd:string', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      terms: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dueDate: { type: 'xsd:dateTime', minOccurs: '0' }
      discountDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      userTotal: { type: 'xsd:double', minOccurs: '0' }
      discountAmount: { type: 'xsd:double', minOccurs: '0' }
      taxTotal: { type: 'xsd:double', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      tax2Total: { type: 'xsd:double', minOccurs: '0' }
      creditLimit: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      landedCostMethod: { type: 'platformCommonTyp:LandedCostMethod', minOccurs: '0' }
      expenseList: { type: 'tranPurch:VendorBillExpenseList', minOccurs: '0' }
      itemList: { type: 'tranPurch:VendorBillItemList', minOccurs: '0' }
      landedCostsList: { type: 'tranPurch:PurchLandedCostList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      purchaseOrderList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
  VendorBillExpense:
    elements:
      orderDoc: { type: 'xsd:long', minOccurs: '0' }
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      category: { type: 'platformCore:RecordRef', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isBillable: { type: 'xsd:boolean', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      amortizationSched: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amortizStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationResidual: { type: 'xsd:string', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  VendorBillExpenseList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      expense: { type: 'tranPurch:VendorBillExpense', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorBillItem:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      orderDoc: { type: 'xsd:long', minOccurs: '0' }
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
      expirationDate: { type: 'xsd:dateTime', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      landedCostCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isBillable: { type: 'xsd:boolean', minOccurs: '0' }
      billVarianceStatus: { type: 'tranPurchTyp:TransactionBillVarianceStatus', minOccurs: '0' }
      billreceiptsList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      amortizationSched: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amortizStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationResidual: { type: 'xsd:string', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  VendorBillItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranPurch:VendorBillItem', minOccurs: '0', maxOccurs: 'unbounded' }
  PurchaseOrder:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vatRegNum: { type: 'xsd:string', minOccurs: '0' }
      employee: { type: 'platformCore:RecordRef', minOccurs: '0' }
      supervisorApproval: { type: 'xsd:boolean', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      terms: { type: 'platformCore:RecordRef', minOccurs: '0' }
      dueDate: { type: 'xsd:dateTime', minOccurs: '0' }
      otherRefNum: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      source: { type: 'xsd:string', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      toBePrinted: { type: 'xsd:boolean', minOccurs: '0' }
      toBeEmailed: { type: 'xsd:boolean', minOccurs: '0' }
      email: { type: 'xsd:string', minOccurs: '0' }
      toBeFaxed: { type: 'xsd:boolean', minOccurs: '0' }
      fax: { type: 'xsd:string', minOccurs: '0' }
      message: { type: 'xsd:string', minOccurs: '0' }
      transactionBillAddress: { type: 'platformCommon:BillAddress', minOccurs: '0' }
      billAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      billAddress: { type: 'xsd:string', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipTo: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subTotal: { type: 'xsd:double', minOccurs: '0' }
      taxTotal: { type: 'xsd:double', minOccurs: '0' }
      tax2Total: { type: 'xsd:double', minOccurs: '0' }
      transactionShipAddress: { type: 'platformCommon:ShipAddress', minOccurs: '0' }
      shipAddressList: { type: 'platformCore:RecordRef', minOccurs: '0' }
      shipAddress: { type: 'xsd:string', minOccurs: '0' }
      fob: { type: 'xsd:string', minOccurs: '0' }
      shipDate: { type: 'xsd:dateTime', minOccurs: '0' }
      shipMethod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      trackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      linkedTrackingNumbers: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      intercoTransaction: { type: 'platformCore:RecordRef', minOccurs: '0' }
      intercoStatus: { type: 'platformCommonTyp:IntercoStatus', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      orderStatus: { type: 'tranPurchTyp:PurchaseOrderOrderStatus', minOccurs: '0' }
      itemList: { type: 'tranPurch:PurchaseOrderItemList', minOccurs: '0' }
      expenseList: { type: 'tranPurch:PurchaseOrderExpenseList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  PurchaseOrderExpense:
    elements:
      line: { type: 'xsd:long', minOccurs: '0' }
      category: { type: 'platformCore:RecordRef', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isClosed: { type: 'xsd:boolean', minOccurs: '0' }
      isBillable: { type: 'xsd:boolean', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  PurchaseOrderExpenseList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      expense: { type: 'tranPurch:PurchaseOrderExpense', minOccurs: '0', maxOccurs: 'unbounded' }
  PurchaseOrderItem:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      quantityReceived: { type: 'xsd:double', minOccurs: '0' }
      quantityBilled: { type: 'xsd:double', minOccurs: '0' }
      quantityAvailable: { type: 'xsd:double', minOccurs: '0' }
      quantityOnHand: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      landedCostCategory: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isBillable: { type: 'xsd:boolean', minOccurs: '0' }
      billVarianceStatus: { type: 'tranPurchTyp:TransactionBillVarianceStatus', minOccurs: '0' }
      matchBillToReceipt: { type: 'xsd:boolean', minOccurs: '0' }
      expectedReceiptDate: { type: 'xsd:dateTime', minOccurs: '0' }
      isClosed: { type: 'xsd:boolean', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  PurchaseOrderItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranPurch:PurchaseOrderItem', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemReceipt:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      partner: { type: 'platformCore:RecordRef', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      landedCostMethod: { type: 'platformCommonTyp:LandedCostMethod', minOccurs: '0' }
      itemList: { type: 'tranPurch:ItemReceiptItemList', minOccurs: '0' }
      expenseList: { type: 'tranPurch:ItemReceiptExpenseList', minOccurs: '0' }
      landedCostsList: { type: 'tranPurch:PurchLandedCostList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ItemReceiptItem:
    elements:
      itemReceive: { type: 'xsd:boolean', minOccurs: '0' }
      jobName: { type: 'xsd:string', minOccurs: '0' }
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      itemName: { type: 'xsd:string', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      onHand: { type: 'xsd:double', minOccurs: '0' }
      quantityRemaining: { type: 'xsd:double', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      unitsDisplay: { type: 'xsd:string', minOccurs: '0' }
      unitCostOverride: { type: 'xsd:double', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      serialNumbers: { type: 'xsd:string', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
      expirationDate: { type: 'xsd:dateTime', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      restock: { type: 'xsd:boolean', minOccurs: '0' }
      billVarianceStatus: { type: 'tranPurchTyp:TransactionBillVarianceStatus', minOccurs: '0' }
      isDropShipment: { type: 'xsd:boolean', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ItemReceiptItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranPurch:ItemReceiptItem', minOccurs: '0', maxOccurs: 'unbounded' }
  ItemReceiptExpense:
    elements:
      markReceived: { type: 'xsd:boolean', minOccurs: '0' }
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      account: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  ItemReceiptExpenseList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      expense: { type: 'tranPurch:ItemReceiptExpense', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorPayment:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      balance: { type: 'xsd:double', minOccurs: '0' }
      apAcct: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      address: { type: 'xsd:string', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      voidJournal: { type: 'platformCore:RecordRef', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      toAch: { type: 'xsd:boolean', minOccurs: '0' }
      toBePrinted: { type: 'xsd:boolean', minOccurs: '0' }
      printVoucher: { type: 'xsd:boolean', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      status: { type: 'xsd:string', minOccurs: '0' }
      applyList: { type: 'tranPurch:VendorPaymentApplyList', minOccurs: '0' }
      creditList: { type: 'tranPurch:VendorPaymentCreditList', minOccurs: '0' }
      billPay: { type: 'xsd:boolean', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  VendorPaymentApply:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      job: { type: 'xsd:string', minOccurs: '0' }
      applyDate: { type: 'xsd:dateTime', minOccurs: '0' }
      type: { type: 'xsd:string', minOccurs: '0' }
      refNum: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      due: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      discDate: { type: 'xsd:dateTime', minOccurs: '0' }
      discAmt: { type: 'xsd:double', minOccurs: '0' }
      disc: { type: 'xsd:double', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
  VendorPaymentApplyList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      apply: { type: 'tranPurch:VendorPaymentApply', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorPaymentCredit:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      creditDate: { type: 'xsd:dateTime', minOccurs: '0' }
      type: { type: 'xsd:string', minOccurs: '0' }
      refNum: { type: 'xsd:string', minOccurs: '0' }
      appliedTo: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      due: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
  VendorPaymentCreditList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      credit: { type: 'tranPurch:VendorPaymentCredit', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorCredit:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      unApplied: { type: 'xsd:double', minOccurs: '0' }
      autoApply: { type: 'xsd:boolean', minOccurs: '0' }
      applied: { type: 'xsd:double', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      userTotal: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      postingPeriod: { type: 'platformCore:RecordRef', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      expenseList: { type: 'tranPurch:VendorCreditExpenseList', minOccurs: '0' }
      itemList: { type: 'tranPurch:VendorCreditItemList', minOccurs: '0' }
      applyList: { type: 'tranPurch:VendorCreditApplyList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  VendorCreditExpense:
    elements:
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      category: { type: 'platformCore:RecordRef', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isBillable: { type: 'xsd:boolean', minOccurs: '0' }
      amortizationSched: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amortizStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationResidual: { type: 'xsd:string', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  VendorCreditExpenseList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      expense: { type: 'tranPurch:VendorCreditExpense', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorCreditItem:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      serialNumbersList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isBillable: { type: 'xsd:boolean', minOccurs: '0' }
      amortizationSched: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amortizStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationResidual: { type: 'xsd:string', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  VendorCreditItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranPurch:VendorCreditItem', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorCreditApply:
    elements:
      apply: { type: 'xsd:boolean', minOccurs: '0' }
      applyDate: { type: 'xsd:dateTime', minOccurs: '0' }
      doc: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      type: { type: 'xsd:string', minOccurs: '0' }
      refNum: { type: 'xsd:string', minOccurs: '0' }
      total: { type: 'xsd:double', minOccurs: '0' }
      due: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
  VendorCreditApplyList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      apply: { type: 'tranPurch:VendorCreditApply', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorReturnAuthorization:
    base: 'platformCore:Record'
    attributes:
      internalId: { type: 'xsd:string' }
      externalId: { type: 'xsd:string' }
    elements:
      createdDate: { type: 'xsd:dateTime', minOccurs: '0' }
      lastModifiedDate: { type: 'xsd:dateTime', minOccurs: '0' }
      customForm: { type: 'platformCore:RecordRef', minOccurs: '0' }
      tranId: { type: 'xsd:string', minOccurs: '0' }
      createdFrom: { type: 'platformCore:RecordRef', minOccurs: '0' }
      entity: { type: 'platformCore:RecordRef', minOccurs: '0' }
      orderStatus: { type: 'tranPurchTyp:VendorReturnAuthorizationOrderStatus', minOccurs: '0' }
      tranDate: { type: 'xsd:dateTime', minOccurs: '0' }
      userTotal: { type: 'xsd:double', minOccurs: '0' }
      currency: { type: 'platformCore:RecordRef', minOccurs: '0' }
      currencyName: { type: 'xsd:string', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      exchangeRate: { type: 'xsd:double', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      subsidiary: { type: 'platformCore:RecordRef', minOccurs: '0' }
      intercoTransaction: { type: 'platformCore:RecordRef', minOccurs: '0' }
      intercoStatus: { type: 'platformCommonTyp:IntercoStatus', minOccurs: '0' }
      expenseList: { type: 'tranPurch:VendorReturnAuthorizationExpenseList', minOccurs: '0' }
      itemList: { type: 'tranPurch:VendorReturnAuthorizationItemList', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  VendorReturnAuthorizationExpense:
    elements:
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      category: { type: 'platformCore:RecordRef', minOccurs: '0' }
      account: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      memo: { type: 'xsd:string', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isBillable: { type: 'xsd:boolean', minOccurs: '0' }
      amortizationSched: { type: 'platformCore:RecordRef', minOccurs: '0' }
      amortizStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationResidual: { type: 'xsd:string', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  VendorReturnAuthorizationExpenseList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      expense: { type: 'tranPurch:VendorReturnAuthorizationExpense', minOccurs: '0', maxOccurs: 'unbounded' }
  VendorReturnAuthorizationItem:
    elements:
      item: { type: 'platformCore:RecordRef', minOccurs: '0' }
      vendorName: { type: 'xsd:string', minOccurs: '0' }
      line: { type: 'xsd:long', minOccurs: '0' }
      orderLine: { type: 'xsd:long', minOccurs: '0' }
      quantity: { type: 'xsd:double', minOccurs: '0' }
      units: { type: 'platformCore:RecordRef', minOccurs: '0' }
      inventoryDetail: { type: 'platformCommon:InventoryDetail', minOccurs: '0' }
      serialNumbersList: { type: 'platformCore:RecordRefList', minOccurs: '0' }
      description: { type: 'xsd:string', minOccurs: '0' }
      binNumbers: { type: 'xsd:string', minOccurs: '0' }
      rate: { type: 'xsd:string', minOccurs: '0' }
      amount: { type: 'xsd:double', minOccurs: '0' }
      taxCode: { type: 'platformCore:RecordRef', minOccurs: '0' }
      taxRate1: { type: 'xsd:double', minOccurs: '0' }
      taxRate2: { type: 'xsd:double', minOccurs: '0' }
      grossAmt: { type: 'xsd:double', minOccurs: '0' }
      tax1Amt: { type: 'xsd:double', minOccurs: '0' }
      options: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
      department: { type: 'platformCore:RecordRef', minOccurs: '0' }
      class: { type: 'platformCore:RecordRef', minOccurs: '0' }
      location: { type: 'platformCore:RecordRef', minOccurs: '0' }
      customer: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isBillable: { type: 'xsd:boolean', minOccurs: '0' }
      isClosed: { type: 'xsd:boolean', minOccurs: '0' }
      amortizationSched: { type: 'platformCore:RecordRef', minOccurs: '0' }
      isDropShipment: { type: 'xsd:boolean', minOccurs: '0' }
      amortizStartDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationEndDate: { type: 'xsd:dateTime', minOccurs: '0' }
      amortizationResidual: { type: 'xsd:string', minOccurs: '0' }
      customFieldList: { type: 'platformCore:CustomFieldList', minOccurs: '0' }
  VendorReturnAuthorizationItemList:
    attributes:
      replaceAll: { type: 'xsd:boolean', default: 'true' }
    elements:
      item: { type: 'tranPurch:VendorReturnAuthorizationItem', minOccurs: '0', maxOccurs: 'unbounded' }
