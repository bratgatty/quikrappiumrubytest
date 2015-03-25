class HelperClass

  def assert_search_icon_exists
    sleep 5
    search_icon = @@driver.find_element("id",Search_Btn)
    search_icon.displayed?
  end

  def wait_for_element_to_appear(by,arg,time)
    wait = Selenium::WebDriver::Wait.new :timeout => time
    wait.until {@@driver.find_element(by,arg).displayed?}

  end

end