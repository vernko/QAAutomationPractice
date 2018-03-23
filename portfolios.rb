require 'selenium-webdriver'
require 'rspec'
require 'faker'
require_relative 'baseclass'

class Portfolios < BaseClass
  def create_portfolio_item
    create_new_button = find_element_with_wait(:xpath => "//a[@href='/portfolios/new']")
    create_new_button.click
    sleep 2

    title_field = @driver.find_element(:xpath => "//input[@name='portfolio[title]']")
    type_things(title_field, @random_title)

    subtitle_field = @driver.find_element(:xpath => "//input[@name='portfolio[subtitle]']")
    type_things(title_field, @random_subtitle)
    
    body_field = @driver.find_element(:xpath => "//input[@name='portfolio[body]']")
    type_things(body_field, @random_content)

    add_tech_button = @driver.find_element(:xpath => "//input[@class='add_fields']")

    technology_field =  @driver.find_element(:xpath => "//input[@id='portfolio_technologies_attributes_{id}_name']")
    type_things(techology_field, @random_technology)
    
    save_button = @driver.find_element(:xpath => "//input[@value='Save Portfolio Item']")
    save_button.click
  end

  # def upload_main_image
  # end
  # # how do you get a method to show that it asks you to pick something from your computer

  # def upload_thumb_image
  # end
  # # how do you get a method to show that it asks you to pick something from your computer

  # def add_technology
    
  # end
end