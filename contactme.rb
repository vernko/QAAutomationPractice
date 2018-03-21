require 'selenium-webdriver'
require 'rspec'
require_relative 'baseclass'

class ContactMe < BaseClass    
  def contact
    contact_nav = @driver.find_element_with_wait(link: "Contact")
  end

  def find_contact_me
    @driver.find_element_with_wait(:tag_name, 'h1')
  end

  def call_me
    @driver.find_element_with_wait(:xpath => "//a[class='call-me-button']")
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