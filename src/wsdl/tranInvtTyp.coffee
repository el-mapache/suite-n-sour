simpleTypes = module.exports =
  TransferOrderItemCommitInventory:
    base: 'xsd:string'
    values: ["_availableQty","_completeQty","_doNotCommit"]
  TransferOrderOrderStatus:
    base: 'xsd:string'
    values: ["_pendingApproval","_pendingFulfillment","_rejected","_partiallyFulfilled","_pendingReceiptPartFulfilled","_pendingReceipt","_received","_closed","_undefined"]
  WorkOrderItemItemCreatePo:
    base: 'xsd:string'
    values: ["_specialOrder"]
  WorkOrderItemItemCommitInventory:
    base: 'xsd:string'
    values: ["_availableQty","_completeQty","_doNotCommit"]
