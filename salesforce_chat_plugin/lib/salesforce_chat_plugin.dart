import 'package:salesforce_chat_platform_interface/salesforce_chat_platform_interface.dart';

class SalesforceChatPlugin {
  Future<String?> getPlatformVersion() {
    return SalesforceChatPlatform.instance.getPlatformVersion();
  }
}
