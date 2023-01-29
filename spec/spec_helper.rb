# frozen_string_literal: true

require 'appium_lib'

ANDROID_PACKAGE = 'io.appium.android.apis'
def android_caps
  {
    caps: {
      platformName: 'android',
      deviceName: 'emulator-5554',
      appPackage: 'com.android.chrome',
      appActivity: 'com.google.android.apps.chrome.Main'
    },
    appium_lib: {
      wait: 60
    }
  }
end
