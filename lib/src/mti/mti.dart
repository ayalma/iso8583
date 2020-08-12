import 'package:iso8583/src/mti/message_class.dart';
import 'package:iso8583/src/mti/message_function.dart';
import 'package:iso8583/src/mti/message_origin.dart';

import 'message_version.dart';

class MessageTypeIndicator {
  final MessageVersion version;
  final MessageClass msgClass;
  final MessageFunction msgFunction;

  final MessageOrigin msgOrigin;

  MessageTypeIndicator(
    this.version,
    this.msgClass,
    this.msgFunction,
    this.msgOrigin,
  );

  factory MessageTypeIndicator.fromMtiString(String mtiString) {
    MessageTypeIndicator mti = MessageTypeIndicator(
      versionFromCode(mtiString[0]),
      classFromCode(mtiString[1]),
      functionFromCode(mtiString[2]),
      originFromCode(mtiString[3]),
    );

    return mti;
  }

  @override
  String toString() {
    return '${version.code}${msgClass.code}${msgFunction.code}${msgOrigin.code}';
  }
}
