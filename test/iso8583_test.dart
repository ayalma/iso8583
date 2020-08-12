import 'package:flutter_test/flutter_test.dart';

import 'package:iso8583/iso8583.dart';

void main() {
  group('iso 8583 test', () {
    MessageTypeIndicator mti;
    setUp(() {
      mti = MessageTypeIndicator(
        MessageVersion.Iso1987,
        MessageClass.FileActions,
        MessageFunction.Request,
        MessageOrigin.Acquirer,
      );
    });
    test('mti test', () {
      expect(mti.toString(), '0300');
    });

    test('message parse test', () {
      final dump =
          "03003018008000058081000000000000001000130717071914003300025200003123001a11003456001c36401607312E332E322E30e699d788d4adf84f";

      final message = Message.parse(dump);

      expect(dump, message.toString());
    });
    test('iso test class', () {
      var message = Message()
        ..mti = mti
        ..addFieldValue(Fields.F3_ProcessCode, "000000")
        ..addFieldValue(Fields.F4_AmountTransaction, "1000")
        ..addFieldValue(Fields.F12_LocalTime, "130717")
        ..addFieldValue(Fields.F13_LocalDate, "0719")
        ..addFieldValue(Fields.F25_POS_ConditionCode, "14")
        ..addFieldValue(Fields.F46_AddData_ISO, "300")
        ..addFieldValue(Fields.F48_AddData_Private, "200003123001a11003456001c")
        ..addFieldValue(Fields.F49_CurrencyCode_Transaction, "364")
        ..addFieldValue(Fields.F57_Reserved_National, "07312E332E322E30")
        ..addFieldValue(Fields.F64_MAC, "e699d788d4adf84f");
      print(message);
    });
  });
}
