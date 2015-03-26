require 'rspec/expectations'
require 'appium_lib'
require 'cucumber/ast'
require 'selenium-webdriver'
require_relative "../../features/pages/helper"
require_relative "../../features/pages/search_page"
require_relative "../../features/pages/home_page"
require_relative "../../features/support/ids"
require_relative"../../features/pages/login_page"



BEGIN {
  $VERBOSE = nil
}

@@common_obj = HelperClass.new
@@homepage_obj = HomePage.new
@@search_obj = SearchPage.new
@@login_obj = Login.new

