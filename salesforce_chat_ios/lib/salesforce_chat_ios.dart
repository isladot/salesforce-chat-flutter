import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:salesforce_chat_platform_interface/salesforce_chat_platform_interface.dart';

class SalesforceChatIos extends SalesforceChatPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('salesforce_chat_ios');

  static void registerWith() {
    SalesforceChatPlatform.instance = SalesforceChatIos._privateContructor();
  }

  SalesforceChatIos._privateContructor();

  static final SalesforceChatIos shared =
      SalesforceChatIos._privateContructor();

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
