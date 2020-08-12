enum MessageClass {
  Reserved0,
  Authoization,
  Financial,
  FileActions,
  ReversalAndChargeback,
  Reconciliation,
  Administrative,
  FeeCollection,
  NetworkManagement,
  Reserved9
}

const _valueMap = const {
  MessageClass.Reserved0: 0,
  MessageClass.Authoization: 1,
  MessageClass.Financial: 2,
  MessageClass.FileActions: 3,
  MessageClass.ReversalAndChargeback: 4,
  MessageClass.Reconciliation: 5,
  MessageClass.Administrative: 6,
  MessageClass.FeeCollection: 7,
  MessageClass.NetworkManagement: 8,
  MessageClass.Reserved9: 9,
};
MessageClass classFromCode(String code) => _valueMap.entries
    .firstWhere((element) => element.value.toString() == code,
        orElse: () => null)
    .key;

extension MessageClassExtintion on MessageClass {
  int get code => _valueMap[this];
}
