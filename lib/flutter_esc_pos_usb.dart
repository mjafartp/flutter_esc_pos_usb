
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterEscPosUsb {
  static const MethodChannel _channel = MethodChannel('flutter_esc_pos_usb');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
