require 'selenium-webdriver'
require 'rspec'
require_relative 'baseclass'

class ContactMe < BaseClass    
  def contact
      sleep 2
      contact_nav = @driver.find_element(link: "Contact")
      contact_nav.click
      sleep 2
      contact_title = @driver.find_element(tag_name: "h1")
    end
end

# When doing the test on contact page. It doesn't load the video