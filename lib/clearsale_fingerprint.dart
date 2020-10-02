
import 'dart:async';

import 'package:flutter/services.dart';

class ClearsaleFingerprint {
  static const MethodChannel _channel =
      const MethodChannel('clearsale_fingerprint');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
