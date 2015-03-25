require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'
require 'selenium-webdriver'

server_url = "http://0.0.0.0:4723/wd/hub"

if ENV["PLATFORM"] == "Android"
  capabilities = {
      'platformName' => "Android",
      'deviceName' => ENV["ANDROID_DEVICE"],
      'appActivity' => "com.quikr.old.SplashActivity",
      'appPackage' => "com.quikr"
  }

end

Before do |scenario|
  @@driver = Appium::Driver.new(caps:capabilities)
  @@driver.start_driver
  context = @@driver.available_contexts
  @@driver.set_context context[0]
end

After do |scenario|
  @@driver.driver_quit
end