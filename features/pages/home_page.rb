class HomePage

  def tap_search_icon
    search_btn = @@driver.find_element("id",Search_Btn)
    search_btn.click
  end

end