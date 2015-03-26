class HelperClass

  def assert_search_icon_exists

    sleep 3

    # After login, its observer that select city alert pops up. To dismiss it , writing the following logic

    if @@driver.find_elements("name",'Continue').size > 0
      @@driver.find_element("name",'Continue').click
    end


    search_icon = @@driver.find_element("id",Search_Btn)
    search_icon.displayed?
  end

  ## Function to tap on an item displayed in the view
  def tap_item(by,arg)
    @@driver.find_element(by,arg).click
  end


  def find_element_text(by,arg)
    return @@driver.find_element(by, arg).text
  end

  def wait_for_element_to_appear(by,arg,time)
    wait = Selenium::WebDriver::Wait.new :timeout => time
    wait.until {@@driver.find_element(by,arg).displayed?}
  end

  def enter_text(by,arg,txt)
    @@driver.find_element(by,arg).send_keys txt
  end

end