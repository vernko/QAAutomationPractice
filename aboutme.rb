require 'selenium-webdriver'
require 'rspec'
require_relative 'baseclass'

class AboutMe < BaseClass
    def know_me
      know_me_button = @driver.find_element_with_wait(link: "Get to Know Me")
    end

    def find_about_me
      @driver.find_element_with_wait(:tag_name, 'h1')
    end
end
