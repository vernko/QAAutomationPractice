require 'selenium-webdriver'
require 'rspec'
require_relative 'baseclass'

class AboutMe < BaseClass
    def know_me
      sleep 1
      know_me_button = @driver.find_element(link: "Get to Know Me")
      
    end

    def find_aboutme
      sleep 2
      @driver.find_element(:tag_name, 'h1')
    end
end
