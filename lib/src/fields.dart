enum Fields {
  F1_Bitmap,
  F2_PAN,
  F3_ProcessCode,
  F4_AmountTransaction,
  F5_AmountSettlement,
  F6_AmountCardholder,
  F7_TransmissionDateTime,
  F8_AmountCardholder_BillingFee,
  F9_ConversionRate_Settlement,
  F10_ConversionRate_Cardholder,
  F11_STAN,
  F12_LocalTime,
  F13_LocalDate,
  F14_ExpirationDate,
  F15_SettlementDate,
  F16_CurrencyConversionDate,
  F17_CaptureDate,
  F18_MerchantType,
  F19_AcquiringInstitution,
  F20_PANExtended,
  F21_ForwardingInstitution,
  F22_EntryMode,
  F23_PANSequence,
  F24_NII_FunctionCode,
  F25_POS_ConditionCode,
  F26_POS_CaptureCode,
  F27_AuthIdResponseLength,
  F28_Amount_TransactionFee,
  F29_Amount_SettlementFee,
  F30_Amount_TransactionProcessingFee,
  F31_Amount_SettlementProcessingFee,
  F32_AcquiringInstitutionIdCode,
  F33_ForwardingInstitutionIdCode,
  F34_PAN_Extended,
  F35_Track2,
  F36_Track3,
  F37_RRN,
  F38_AuthIdResponse,
  F39_ResponseCode,
  F40_ServiceRestrictionCode,
  F41_CA_TerminalID,
  F42_CA_ID,
  F43_CardAcceptorInfo,
  F44_AddResponseData,
  F45_Track1,
  F46_AddData_ISO,
  F47_AddData_National,
  F48_AddData_Private,
  F49_CurrencyCode_Transaction,
  F50_CurrencyCode_Settlement,
  F51_CurrencyCode_Cardholder,
  F52_PIN,
  F53_SecurityControlInfo,
  F54_AddAmount,
  F55_ICC,
  F56_Reserved_ISO,
  F57_Reserved_National,
  F58_Reserved_National,
  F59_Reserved_National,
  F60_Reserved_National,
  F61_Reserved_Private,
  F62_Reserved_Private,
  F63_Reserved_Private,
  F64_MAC,
}

class FieldsData {
  final int no;
  final String type;
  final int len;
  final bool isFixed;
  final String format;

  const FieldsData(this.no, this.type, this.len, this.isFixed, this.format);
}

const _valueMap = const {
  Fields.F1_Bitmap: FieldsData(1, "b", 64, true, null),
  Fields.F2_PAN: FieldsData(2, "n", 19, false, "LL"),
  Fields.F3_ProcessCode: FieldsData(3, "n", 6, true, null),
  Fields.F4_AmountTransaction: FieldsData(4, "n", 12, true, null),
  Fields.F5_AmountSettlement: FieldsData(5, "n", 12, true, null),
  Fields.F6_AmountCardholder: FieldsData(6, "n", 12, true, null),
  Fields.F7_TransmissionDateTime: FieldsData(7, "n", 10, true, null),
  Fields.F8_AmountCardholder_BillingFee: FieldsData(8, "n", 8, true, null),
  Fields.F9_ConversionRate_Settlement: FieldsData(9, "n", 8, true, null),
  Fields.F10_ConversionRate_Cardholder: FieldsData(10, "n", 8, true, null),
  Fields.F11_STAN: FieldsData(11, "n", 6, true, null),
  Fields.F12_LocalTime: FieldsData(12, "n", 6, true, null),
  Fields.F13_LocalDate: FieldsData(13, "n", 4, true, null),
  Fields.F14_ExpirationDate: FieldsData(14, "n", 4, true, null),
  Fields.F15_SettlementDate: FieldsData(15, "n", 4, true, null),
  Fields.F16_CurrencyConversionDate: FieldsData(16, "n", 4, true, null),
  Fields.F17_CaptureDate: FieldsData(17, "n", 4, true, null),
  Fields.F18_MerchantType: FieldsData(18, "n", 4, true, null),
  Fields.F19_AcquiringInstitution: FieldsData(19, "n", 3, true, null),
  Fields.F20_PANExtended: FieldsData(20, "n", 3, true, null),
  Fields.F21_ForwardingInstitution: FieldsData(21, "n", 3, true, null),
  Fields.F22_EntryMode: FieldsData(22, "n", 3, true, null),
  Fields.F23_PANSequence: FieldsData(23, "n", 3, true, null),
  Fields.F24_NII_FunctionCode: FieldsData(24, "n", 3, true, null),
  Fields.F25_POS_ConditionCode: FieldsData(25, "n", 2, true, null),
  Fields.F26_POS_CaptureCode: FieldsData(26, "n", 2, true, null),
  Fields.F27_AuthIdResponseLength: FieldsData(27, "n", 1, true, null),
  Fields.F28_Amount_TransactionFee: FieldsData(28, "x+n", 8, true, null),
  Fields.F29_Amount_SettlementFee: FieldsData(29, "x+n", 8, true, null),
  Fields.F30_Amount_TransactionProcessingFee:
      FieldsData(30, "x+n", 8, true, null),
  Fields.F31_Amount_SettlementProcessingFee:
      FieldsData(31, "x+n", 8, true, null),
  Fields.F32_AcquiringInstitutionIdCode: FieldsData(32, "n", 11, false, "LL"),
  Fields.F33_ForwardingInstitutionIdCode: FieldsData(33, "n", 11, false, "LL"),
  Fields.F34_PAN_Extended: FieldsData(34, "ns", 28, false, "LL"),
  Fields.F35_Track2: FieldsData(35, "z", 37, false, "LL"),
  Fields.F36_Track3: FieldsData(36, "z", 104, false, "LLL"),
  Fields.F37_RRN: FieldsData(37, "an", 12, true, null),
  Fields.F38_AuthIdResponse: FieldsData(38, "an", 6, true, null),
  Fields.F39_ResponseCode: FieldsData(39, "an", 2, true, null),
  Fields.F40_ServiceRestrictionCode: FieldsData(40, "an", 3, true, null),
  Fields.F41_CA_TerminalID: FieldsData(41, "ans", 8, true, null),
  Fields.F42_CA_ID: FieldsData(42, "ans", 15, true, null),
  Fields.F43_CardAcceptorInfo: FieldsData(43, "ans", 40, true, null),
  Fields.F44_AddResponseData: FieldsData(44, "an", 25, false, "LL"),
  Fields.F45_Track1: FieldsData(45, "an", 76, false, "LL"),
  Fields.F46_AddData_ISO: FieldsData(46, "an", 999, false, "LLL"),
  Fields.F47_AddData_National: FieldsData(47, "an", 999, false, "LLL"),
  Fields.F48_AddData_Private: FieldsData(48, "an", 999, false, "LLL"),
  Fields.F49_CurrencyCode_Transaction: FieldsData(49, "a|n", 3, true, null),
  Fields.F50_CurrencyCode_Settlement: FieldsData(50, "a|n", 3, true, null),
  Fields.F51_CurrencyCode_Cardholder: FieldsData(51, "a|n", 3, true, null),
  Fields.F52_PIN: FieldsData(52, "b", 8, true, null),
  Fields.F53_SecurityControlInfo: FieldsData(53, "n", 16, true, null),
  Fields.F54_AddAmount: FieldsData(54, "an", 120, false, "LLL"),
  Fields.F55_ICC: FieldsData(55, "ans", 999, false, "LLL"),
  Fields.F56_Reserved_ISO: FieldsData(56, "ans", 999, false, "LLL"),
  Fields.F57_Reserved_National: FieldsData(57, "ans", 999, false, "LLL"),
  Fields.F58_Reserved_National: FieldsData(58, "ans", 999, false, "LLL"),
  Fields.F59_Reserved_National: FieldsData(59, "ans", 999, false, "LLL"),
  Fields.F60_Reserved_National: FieldsData(60, "ans", 999, false, "LLL"),
  Fields.F61_Reserved_Private: FieldsData(61, "ans", 999, false, "LLL"),
  Fields.F62_Reserved_Private: FieldsData(62, "ans", 999, false, "LLL"),
  Fields.F63_Reserved_Private: FieldsData(63, "ans", 999, false, "LLL"),
  Fields.F64_MAC: FieldsData(64, "b", 16, true, null),
};

Fields fieldFromCode(int no) => _valueMap.entries
    .firstWhere((element) => element.value.no == no, orElse: () => null)
    .key;

extension FieldsExtension on Fields {
  FieldsData get data => _valueMap[this];
}