require 'selenium-webdriver'
require 'rspec'
require 'faker'
require_relative 'baseclass'

class Login < BaseClass
    def logout_header
      @driver.find_element(link: "Logout")
    end
end

# Error with the "Login" element