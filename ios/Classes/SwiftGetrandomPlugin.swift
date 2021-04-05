import Flutter
import UIKit

public class SwiftGetrandomPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "getrandom", binaryMessenger: registrar.messenger())
    let instance = SwiftGetrandomPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      result(getDate());
  }

  func getDate() -> Int {
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    formatter.timeStyle = .medium
    formatter.timeZone = TimeZone.current

    let current = formatter.string(from: Date())
    let stringCurrent = formatter.date(from: current)
    let inMillis = stringCurrent!.timeIntervalSince1970

    return Int(inMillis) ?? 0
  }
}
