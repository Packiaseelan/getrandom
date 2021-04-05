import 'dart:async';

import 'package:flutter/services.dart';

class Getrandom {
  static const MethodChannel _channel = const MethodChannel('getrandom');

  static Future<int> get getRandomNumber async {
    final int randomNumber =
        await _channel.invokeMethod('generateRandomNumber');
    return randomNumber;
  }
}
