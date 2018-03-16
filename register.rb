require 'selenium-webdriver'
require 'rspec'
require_relative 'baseclass'

def sign_up
  register_header = @driver.find_element(link: "Register")
  register_header.click
  sleep 3
  email_field = @driver.find_element(:xpath => "//input[@id='user_email']")
  type_things(email_field, @admin_email)
  
  password_field = @driver.find_element(:xpath => "//input[@id='user_password']")
  type_things(password_field, @admin_password)
  
  register_button = @driver.find_element(:xpath => "//input[@value='Sign up']")
  register_button.click
end