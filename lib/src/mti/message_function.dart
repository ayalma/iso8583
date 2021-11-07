import 'package:collection/collection.dart' show IterableExtension;

enum MessageFunction {
  Request,
  RequestResponse,
  Advice,
  AdviceResponse,
  Notification,
  NotificationAcknowledgement,
  Instruction,
  InstructionAcknowledgement,
  Reserved8,
  Reserved9,
}

const _valueMap = const {
  MessageFunction.Request: 0,
  MessageFunction.RequestResponse: 1,
  MessageFunction.Advice: 2,
  MessageFunction.AdviceResponse: 3,
  MessageFunction.Notification: 4,
  MessageFunction.NotificationAcknowledgement: 5,
  MessageFunction.Instruction: 6,
  MessageFunction.InstructionAcknowledgement: 7,
  MessageFunction.Reserved8: 8,
  MessageFunction.Reserved9: 9,
};
MessageFunction functionFromCode(String code) => _valueMap.entries
    .firstWhereOrNull((element) => element.value.toString() == code)!
    .key;

extension MessageFunctionExtintion on MessageFunction {
  int? get code => _valueMap[this];
}
