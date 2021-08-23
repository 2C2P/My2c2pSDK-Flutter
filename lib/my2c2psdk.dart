/*
 * Created by Nonthawatt Phongwittayapanu on 16/8/21 8:24 PM
 * Copyright © 2021 2C2P. All rights reserved.
 */

import 'dart:async';

import 'package:flutter/services.dart';

import 'models/my2c2psdk_request.dart';

class My2c2pSDK {
  static const MethodChannel _channel = const MethodChannel('my2c2psdk');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<String?> proceed(My2c2pSDKRequest request) async {
    final result = await _channel.invokeMethod('proceed', {
      'request': request.toJson(),
    });
    return result;
  }
}
