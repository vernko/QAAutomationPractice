require 'selenium-webdriver'
require 'rspec'
require 'faker'
require_relative 'baseclass'

class Register < BaseClass
  def initialize
    super
    @random_name = Faker::DragonBall.character
    @random_email = Faker::Internet.email
    @random_password = Faker::Internet.password
    # NOTE: setting up your initialize this way still allows you access to all of the variables in the baseclass, but makes it so that classes that don't need these variables don't have them.
    # Since classes like AboutMe don't need a random_title, they don't need to inherit these from the BaseClass.
  end
  def sign_up
    register_header = @driver.find_element(link: "Register")
    register_header.click
    sleep 3
    email_field = @driver.find_element(:xpath => "//input[@id='user_email']")
    type_things(email_field, @random_email)

    name_field = @driver.find_element(:xpath, => "//input[@id='user_name']")
    type_things(name_field, @random_name)
    
    password_field = @driver.find_element(:xpath => "//input[@id='user_password']")
    type_things(password_field, @random_password)

    password_confirmation = @driver.find_element(:xpath => "//input[@id='user_password_confirmation']")
    type_things(password_confirmation, @random_password)
    
    sign_in_button = @driver.find_element(:xpath => "//input[@value='Sign up']")
    sign_in_button.click
  end
end