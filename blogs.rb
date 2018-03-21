require 'selenium-webdriver'
require 'rspec'
require 'faker'
require_relative 'baseclass'

class Blogs < BaseClass
  def create_blog
    # write_new_button = @driver.find_element(:link_text, "Write a new Blog")
    # Better selector for write_new_button

    title_field = @driver.find_element(:xpath => "//input[@id='blog_title']")
    type_things(title_field, @title)

    topic_selector = @driver.find_element(:xpath => "//input[@name='blog[topic_id]']")
    #TODO: This won't actually do anything with the topic, just find it and then move on
    
    content_field = @driver.find_element(:xpath => "//input[@name='blog[body]']")
    type_things(content_field, @random_content)
    
    submit_button = @driver.find_element(:xpath => "//input[@value='Submit']")
    submit_button.click
  end

  def find_created_blog
    sleep 2
    @driver.find_element(:xpath => "//*[@class='blog-main']")
    # TODO: Using * in your xpath is memory intensive and prone to errors
  end

  # def find_blog_page
  #   sleep 2
  #   @driver.find_element(:tag_name, 'h1')
  # end
end