require 'selenium-webdriver'
require 'rspec'
require_relative 'baseclass'

class AboutMe < BaseClass
    def know_me
      sleep 1
      know_me_button = @driver.find_element(link: "Get to Know Me")
    end

    def find_about_me
      sleep 2
      @driver.find_element(xpath: "//h1[text()='About Me']")
      # NOTE: This was too ambiguous, and would find any h1 on the page. This means changes could easily break it
    end
end
