import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_esc_pos_usb/flutter_esc_pos_usb.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_esc_pos_usb');

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
    expect(await FlutterEscPosUsb.platformVersion, '42');
  });
}
