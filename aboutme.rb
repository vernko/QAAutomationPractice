require 'selenium-webdriver'
require 'rspec'
require_relative 'baseclass'

class AboutMe < BaseClass
    def about_me
      know_me_button = @driver.find_element(link: "Get to Know Me")
      know_me_button.click
      sleep 3
      about_title = @driver.find_element(tag_name: "h1")
    end
end
