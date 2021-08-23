import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my2c2psdk/my2c2psdk.dart';

void main() {
  const MethodChannel channel = MethodChannel('my2c2psdk');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await My2c2pSDK.platformVersion, '42');
  });
}
