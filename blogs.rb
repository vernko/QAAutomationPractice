require 'selenium-webdriver'
require 'rspec'
require 'faker'
require_relative 'baseclass'

class Blogs < BaseClass
  def create_blog
    sleep 6
    button_header = find_element_with_wait(link: 'Blog')
    button_header.click

    write_new_button = find_element_with_wait(:xpath => "//a[@href='/blogs/new']")
    write_new_button.click
    sleep 2

    title_field = @driver.find_element(:xpath => "//input[@id='blog_title']")
    type_things(title_field, @random_title)
    sleep 1

    topic_dropdown = @driver.find_element(:xpath => "//select[@name='blog[topic_id]']")
    topic_dropdown.click
    # Figure out how to actually have it select something from dropdown.
    
    content_field = @driver.find_element(:xpath => "//textarea[@name='blog[body]']")
    type_things(content_field, @random_content)
    
    submit_button = @driver.find_element(:xpath => "//input[@value='Submit']")
    submit_button.click
  end

  def find_created_blog
    @driver.find_element(:xpath => "//*[@class='blog-main']")
    # Figure out a better method to actually look for a newly created blog
  end
end