import Foundation

@objc(HWPHello) class HWPHello : CDVPlugin {

  func greet(command: CDVInvokedUrlCommand) {
    let name = command.arguments[0] as! String
    let result = CDVPluginResult(status: CDVCommandStatus_OK, messageAsString: "Hello, " + name)
    commandDelegate.sendPluginResult(result, callbackId:command.callbackId)
  }
}
