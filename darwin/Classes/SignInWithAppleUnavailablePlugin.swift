import AuthenticationServices

#if os(OSX)
import FlutterMacOS
#elseif os(iOS)
import Flutter
#endif

// This file is replacement from `sign_in_with_apple` version 3.3.0
public class SignInWithAppleUnavailablePlugin: NSObject, FlutterPlugin {
    // This plugin should not be registered with directly
    //
    // This is merely a cross-platform plugin to handle the case Sign in with Apple is not available
    // on the target platform
    //
    // Each target platform will still need a specific Plugin implementation
    // which will need to decide whether or not Sign in with Apple is available
    public static func register(with registrar: FlutterPluginRegistrar) {
        print("SignInWithAppleUnavailablePlugin tried to register which is not allowed")
    }


    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if call.method == "isAvailable" {
            result(false)
            return
        }

        result(
            SignInWithAppleGenericError.notSupported.toFlutterError()
        )
    }
}
