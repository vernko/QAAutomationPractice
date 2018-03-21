require 'selenium-webdriver'
require 'rspec'
require 'faker'
require_relative 'baseclass'

class Portfolios < BaseClass
  def create_portfolio_item
    title_field = @driver.find_element(:xpath => "//input[@name='portfolio[title]']")
    type_things(title_field, @random_title)
    # Actually type a title

    subtitle_field = @driver.find_element(:xpath => "//input[@name='portfolio[subtitle]']")
    type_things(title_field, @random_subtitle)
    # Actually type a subtitle
    
    body_field = @driver.find_element(:xpath => "//input[@name='portfolio[body]']")
    type_things(body_field, @random_content)
    # Actually putting in content in the body
    
    save_button = @driver.find_element(:xpath => "//input[@value='Save Portfolio Item']")
    save_button.click
  end

  def upload_main_image
  end
  # how do you get a method to show that it asks you to pick something from your computer
  # NOTE: You'll probably have to look into modals and how to manipulate them. It is possible though.

  def upload_thumb_image
  end
  # how do you get a method to show that it asks you to pick something from your computer

  def add_technology
    add_tech_button = @driver.find_element(:xpath => "//input[@class='add_fields']")

    technology_field =  @driver.find_element(:xpath => "//input[@id='portfolio_technologies_attributes_{id}_name']")
    type_things(techology_field, @random_technology)
  end
end