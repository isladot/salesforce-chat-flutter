import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'salesforce_chat_method_channel.dart';

abstract class SalesforceChatPlatform extends PlatformInterface {
  /// Constructs a SalesforceChatPlatform.
  SalesforceChatPlatform() : super(token: _token);

  static final Object _token = Object();

  static SalesforceChatPlatform _instance = MethodChannelSalesforceChat();

  /// The default instance of [SalesforceChatPlatform] to use.
  ///
  /// Defaults to [MethodChannelSalesforceChat].
  static SalesforceChatPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SalesforceChatPlatform] when
  /// they register themselves.
  static set instance(SalesforceChatPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
