require 'selenium-webdriver'
require 'rspec'
require 'faker'
require_relative 'baseclass'

class Blogs < BaseClass
  # def find_blog_page
  #   find_element_with_wait(link: 'Blog')
  # end

  def create_blog
    find_element_with_wait(link: 'Blog')

    write_new_button = find_element_with_wait(link: "Write a new Blog")

    title_field = @driver.find_element(:xpath => "//input[@id='blog_title']")
    type_things(title_field, @random_title)

    topic_selector = @driver.find_element(:xpath => "//input[@name='blog[topic_id]']")
    
    content_field = @driver.find_element(:xpath => "//input[@name='blog[body]']")
    type_things(content_field, @random_content)
    
    submit_button = @driver.find_element(:xpath => "//input[@value='Submit']")
    submit_button.click
  end

  def find_created_blog
    @driver.find_element(:xpath => "//*[@class='blog-main']")
  end
end