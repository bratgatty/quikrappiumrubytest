class SearchPage

  def assert_search_field_exists
    sleep 3
    @@search_field = @@driver.find_element("id",Search_Txt_Field)
    @@search_field.displayed?
  end


  def enter_search_text(arg1)
    @@search_field.send_keys arg1
  end


  def validate_suggestions
    puts "This needs to be implemented"
  end


  def select_suggestion
    select_suggestion = @@driver.find_element("id",Search_Suggestion)
    select_suggestion.click
  end

  def wait_for_results_to_load
    @@common_obj.wait_for_element_to_appear("id", FilterBtn, 10)
  end

  def validate_search_results
    puts "This needs to be implemented"
  end
end