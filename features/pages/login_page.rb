class Login

  def tap_login_btn
    @@common_obj.tap_item("id",Sign_In_Btn)
  end

  def tap_ok_btn
    @@common_obj.tap_item("name",OK_Btn)
  end

  def get_login_popup_msg
    @@common_obj.wait_for_element_to_appear("id",POP_UP_MSG,10)
    pop_up_text = @@common_obj.find_element_text("id",POP_UP_MSG)
    return pop_up_text
  end

  def enter_user_name(txt)
    @@common_obj.enter_text("id",Email_Text_Field,txt)
  end

  def enter_password(txt)
    @@common_obj.enter_text("id",Password_Text_Field,txt)
  end


  def assert_logout_btn
    @@common_obj.wait_for_element_to_appear("name", Log_Out_Txt, 10)
  end

end