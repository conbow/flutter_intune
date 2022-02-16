import 'dart:async';

import 'package:flutter/services.dart';

class FlutterIntune {
  static const MethodChannel _channel = MethodChannel('flutter_intune');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String?> showDiagnostics() async {
    return await _channel.invokeMethod('showDiagnostics');
  }
}
