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
    
    content_field = @driver.find_element(:xpath => "//input[@name='blog[body]']")
    type_things(content_field, @random_content)
    
    submit_button = @driver.find_element(:xpath => "//input[@value='Submit']")
    submit_button.click
  end

  def find_created_blog
    @driver.find_element_with_wait(:xpath => "//*[@class='blog-main']")
  end

  # def find_blog_page
  #   sleep 2
  #   @driver.find_element(:tag_name, 'h1')
  # end
end