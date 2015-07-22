import Foundation

@objc(YACPBHello) class YACPBHello : CDVPlugin {

  func greet(command: CDVInvokedUrlCommand) {

    let name = command.arguments[0] as! String

    let result = CDVPluginResult(status: CDVCommandStatus_OK, messageAsString: "Hello, " + name)

    commandDelegate.sendPluginResult(result, callbackId:command.callbackId)
  }
}

/*
To try this out, create a new cordova project, follow the README.md instructions for installing this plugin,
then add the following to www/js/index.js in the onDeviceReady section:

    var success = function(message) {
        alert(message);
    }

    var failure = function() {
        alert("Error calling Hello Plugin");
    }

    hello.greet("Cordova World", success, failure);

Run: cordova prepare

Build and run the project. You should see a pop-up dialog that says "Hello, Cordova World"
*/
