import Flutter
import UIKit
import IntuneMAMSwift

public class SwiftFlutterIntunePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_intune", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterIntunePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    if (call.method == "getPlatformVersion") {
      result("iOS " + UIDevice.current.systemVersion);
    } else if (call.method == "showDiagnostics") {
      IntuneMAMDiagnosticConsole.display()
      result("")
    } else {
      result(FlutterMethodNotImplemented)
    }
  }
}
