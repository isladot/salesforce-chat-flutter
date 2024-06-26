import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'salesforce_chat_platform_interface.dart';

/// An implementation of [SalesforceChatPlatform] that uses method channels.
class MethodChannelSalesforceChat extends SalesforceChatPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('salesforce_chat');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
