require 'selenium-webdriver'
require 'rspec'
require_relative 'baseclass'

class AboutMe < BaseClass
    def know_me
      know_me_button = find_element_with_wait(link: "Get to Know Me")
      sleep 4
    end

    def find_about_me
      skills_button = @driver.find_element(:tag_name => 'h1')
      # Find better selector
end
