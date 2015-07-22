# Yet Another Cordova Parse Bridge

Parse.com provides Javascript and native SDKs. Unfortunately, the Javascript API which works with Cordova is incomplete. Important APIs are missing such as Push notifications. This project is yet another attempt to bridge the cap and augment javascript access to Parse to bring it up to par with the native SDKs.

## Installation

Start by adding the plugin to your cordova project:

    cordova plugin add https://github.com/Imikimi-LLC/yet-another-cordova-parse-bridge.git

Then open your project in XCode and make the following changes to build-settings to enable Swift plugins for Cordova:

    Deployment
      iOS Deployment Target: iOS 7.0 (or newer)

    Swift Compiler - Code Generation
      Objective-C Bridging Header: $PRODUCT_NAME/Plugins/com.imikimi.yet-another-cordova-parse-bridge/Bridging-Header.h

    Runpath Search Paths: dyld: @executable_path/Frameworks

## Details

* First goal is to fully support Push notifications for iOS.
* Native Parse.com SDK is included with the plugin (iOS: v1.7.5)
  * Included:
    - Bolts.framework
    - Parse.framework
    - ParseCrashReporting.framework
  * Not included:
    - ParseFacebookUtils.framework
    - ParseFacebookUtilsV4.framework
    - ParseUI.framework

## Other Projects

There are several other projects doing similar things. Currently all are either out of date or don't support 'install the plugin and never write a line of native code.' These projects are:

* [tavio/parse-push-plugin](https://github.com/taivo/parse-push-plugin/commits/)
* [avivais/phonegap-parse-plugin](https://github.com/avivais/phonegap-parse-plugin)
* [BobSaintClare/cordova-plugin-parse-brdige](https://github.com/BobSaintClare/cordova-plugin-parse-bridge)

NOTES:

* I believe [tavio's](https://github.com/taivo/parse-push-plugin/commits/)'s plugin is an indirect, and more current, fork of [avivais'](https://github.com/avivais/phonegap-parse-plugin).
* [BobSaintClare's](https://github.com/BobSaintClare/cordova-plugin-parse-bridge) requires you manually install the Parse.com native SDKs and requires writing some native-code to use.

## Using
Clone the plugin

    $ git clone https://github.com/Imikimi-LLC/yet-another-cordova-parse-bridge.git

Install the plugin

    $ cd [your_cordova_project]
    $ cordova plugin add https://github.com/Imikimi-LLC/yet-another-cordova-parse-bridge.git

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## More Info

For more information on setting up Cordova see [the documentation](http://cordova.apache.org/docs/en/4.0.0/guide_cli_index.md.html#The%20Command-Line%20Interface)

For more info on plugins see the [Plugin Development Guide](http://cordova.apache.org/docs/en/4.0.0/guide_hybrid_plugins_index.md.html#Plugin%20Development%20Guide)
