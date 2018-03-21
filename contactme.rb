require 'selenium-webdriver'
require 'rspec'
require_relative 'baseclass'

class ContactMe < BaseClass    
  def contact
    sleep 1
    contact_nav = @driver.find_element(link: "Contact")
  end

  def find_contact_me
    sleep 2
    @driver.find_element(:tag_name, 'h1')
  end

  def call_me
    sleep 2
    @driver.find_element(:xpath => "//a[class='call-me-button']")
  end

  # def email_me
  #   sleep 2
  #   @driver.find_element()
  # end

  # def linkedin
  #   sleep 2
  #   @driver.find_element()
  # end
end

# When doing the test on contact page. It doesn't load the video