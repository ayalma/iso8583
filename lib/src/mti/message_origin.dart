enum MessageOrigin {
  Acquirer,
  AcquirerRepeat,
  Issuer,
  IssuerRepeat,
  Other,
  OtherRepeat,
  Reserved6,
  Reserved7,
  Reserved8,
  Reserved9,
}
const _valueMap = const {
  MessageOrigin.Acquirer: 0,
  MessageOrigin.AcquirerRepeat: 1,
  MessageOrigin.Issuer: 2,
  MessageOrigin.IssuerRepeat: 3,
  MessageOrigin.Other: 4,
  MessageOrigin.OtherRepeat: 5,
  MessageOrigin.Reserved6: 6,
  MessageOrigin.Reserved7: 7,
  MessageOrigin.Reserved8: 8,
  MessageOrigin.Reserved9: 9,
};
MessageOrigin originFromCode(String code) => _valueMap.entries
    .firstWhere((element) => element.value.toString() == code,
        orElse: () => null)
    .key;

extension MessageOriginExtintion on MessageOrigin {
  int get code => _valueMap[this];
}
