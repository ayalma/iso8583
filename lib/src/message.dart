import 'dart:typed_data';

import 'package:iso8583/iso8583.dart';
import 'package:iso8583/src/mti/mti.dart';

import 'fields.dart';

class Message {
  MessageTypeIndicator mti;
  Map<Fields, String> _dataElements = Map();

  Message();

  factory Message.parse(String messageString) {
    final _mti =
        MessageTypeIndicator.fromMtiString(messageString.substring(0, 4));
    final bitmap = messageString.substring(4, 20);
    var message = Message()..mti = _mti;
    var binary = "";
    for (int i = 0; i < bitmap.length; i++) {
      binary += int.parse(bitmap[i]).toRadixString(2).padLeft(4, '0');
    }

    var offsset = 20;

    for (var i = 0; i < binary.length; i++) {
      if (binary[i] == '1') {
        final field = fieldFromCode(i + 1);
        final fieldData = field.data;
        if (fieldData.isFixed) {
          message.addFieldValue(
              field, messageString.substring(offsset, offsset + fieldData.len));
          offsset += fieldData.len;
        } else {
          var formatLength = fieldData.format.length;
          var fieldLenght = int.parse(
            messageString.substring(offsset, offsset + formatLength),
          );
          offsset += formatLength;
          message.addFieldValue(
              field, messageString.substring(offsset, offsset + fieldLenght));
          offsset += fieldLenght;
        }
      }
    }
    print(binary);

    return message;
  }
  void addFieldValue(Fields field, String value) {
    //validate and then add
    _dataElements[field] = value;

    //String res = _validate(tag, value.trim());
    //if (res == 'true')
    //vals[tag] = value.trim();
    //else
    //throw new Exception(res);
  }

  String _bitmap() {
    Uint8List bitmapBytes = Uint8List(64);

    _dataElements.keys.forEach((to) {
      bitmapBytes[to.data.no - 1] = 1;
    });
    String bitmap = "";
    for (int i = 0; i < 16; i++) {
      var bytes = bitmapBytes.sublist(i * 4, (i + 1) * 4);
      bitmap += int.parse(bytes.join(''), radix: 2).toString();
    }
    return bitmap;
  }

  String _body() {
    String body = "";

    _dataElements.forEach((key, value) {
      if (key.data.isFixed) {
        body += value.padLeft(key.data.len, '0');
      } else {
        body +=
            "${value.length.toString().padLeft(key.data.format.length, '0')}$value";
      }
    });
    return body;
  }

  @override
  String toString() {
    return "$mti${_bitmap()}${_body()}";
  }
}
