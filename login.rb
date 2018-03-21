require 'selenium-webdriver'
require 'rspec'
require 'faker'
require_relative 'baseclass'

class Login < BaseClass
    def login
      login_header = @driver.find_element_with_wait(link: "Login")
      login_header.click
      
      email_field = @driver.find_element(:xpath => "//input[@id='user_email']")
      type_things(email_field, @admin_email)
      
      password_field = @driver.find_element(:xpath => "//input[@id='user_password']")
      type_things(password_field, @admin_password)
      
      login_button = @driver.find_element(:xpath => "//input[@value='Log in']")
      login_button.click
    end

    def logout_header
      @driver.find_element(link: "Logout")
    end
end

# Error with the "Login" element