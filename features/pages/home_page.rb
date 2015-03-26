class HomePage

  def tap_search_icon
    search_btn = @@driver.find_element("id",Search_Btn)
    search_btn.click
  end


  def navigate_to_login_screen

    # After login, its observer that select city alert pops up. To dismiss it , writing the following logic
    
    if @@driver.find_elements("name",'Continue').size > 0
	    @@driver.find_element("name",'Continue').click
    end
    @@common_obj.wait_for_element_to_appear("id",LHN,10)

    # tap on LHN button
    lhn_btn = @@driver.find_element("id",LHN)
    lhn_btn.click

    #tap on My Account option

    my_account_option = @@driver.find_element("name",My_Account_Option)
    my_account_option.click

  end

end