Appium

1.Server Setup

Install appium

$ brew install node

$ npm install -g appium

$ npm install wd

link: http://appium.io


2.Running Tests

 Start appium
 
$ appium         # start appium


3.   Give Capabilities in app_life_cycle_hooks.rb


Android Eg:
capabilities = {

platformName = "Android"

deviceName = "SAMSUNG"

appPackage = "com.quikr"

app = "./Quikr_7.42.apk"

}

4. Start tests

For Android


$cucumber features/search.feature PLATFORM=Android ANDROID_DEVICE=SAMSUNG


Note:   Give appropriate parameters for capabilities in command line while running above commands

5.  Using Appium Ruby Console

[1]. Start appium


$ appium # start appium

[2]. Go inside projectname/features/support folder


$ cd projectname/features/

[3].Give capabilities for the device in appium.txt

Android Eg: 

[caps]

platformName = "Android"

deviceName = "SAMSUNG"

appPackage = "com.quikr"

app = "./Quikr_7.42.apk"



[4].Start appium ruby console

$ arc commands:

[1].iOS link: https://github.com/appium/ruby_lib/blob/master/docs/ios_docs.md


[2].Android link:https://github.com/appium/ruby_lib/blob/master/docs/android_docs.md

8..Basic Commands for arc

1.available_contexts  ---     It will display all the available contexts.

2.set_context ----   It will switch the context to specified context.


3.current_context ---   It displays the current contexts.


4.get_source or driver.get_source ---- Displays the source of the page currently displaying


5.page ----   Displays detailed view of source.

6.find_element ---- -Finds the element in the page with given search parameters

link:https://thenewcircle.com/static/bookshelf/selenium_tutorial/locators.html


6.1 using id --  Eg: find_element(:id,"signin")


6.2 using xpath -- Eg: driver.find_element(:xpath,"//*[@ng-click='login()']").click


6.3 using class -- Eg: driver.find_element(:class,"popup-body").text


6.4 using div --  Eg:find_element(:xpath,"//button[text()='OK']").click


7.send_keys ---- Sending values to the text fields --- Eg:find_element(:id,'username').send_keys "Apk"


8.click --- Clicking the element with given search parameters --- Eg:find_element(:id,'signin_button').click

iOS Support


Coming Soon

