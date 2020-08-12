const _valueMap = const {
  MessageVersion.Iso1987: 0,
  MessageVersion.Iso1993: 1,
  MessageVersion.Iso2003: 2,
  MessageVersion.Reserved3: 3,
  MessageVersion.Reserved4: 4,
  MessageVersion.Reserved5: 5,
  MessageVersion.Reserved6: 6,
  MessageVersion.Reserved7: 7,
  MessageVersion.NationalUse: 8,
  MessageVersion.PrivateUse: 9,
};

enum MessageVersion {
  Iso1987,
  Iso1993,
  Iso2003,
  Reserved3,
  Reserved4,
  Reserved5,
  Reserved6,
  Reserved7,
  NationalUse,
  PrivateUse,
}

MessageVersion versionFromCode(String code) => _valueMap.entries
    .firstWhere((element) => element.value.toString() == code,
        orElse: () => null)
    .key;

extension VersionExtintion on MessageVersion {
  int get code => _valueMap[this];
}
