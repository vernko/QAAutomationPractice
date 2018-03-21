require 'selenium-webdriver'
require 'rspec'
require 'faker'
require_relative 'blogs'

describe "Creates New Blog" do
  before(:each) do
    @browser = Blogs.new
    @browser.setup
  end

  after(:each) do
    @browser.close_browser
  end

  # it 'goes to blog page' do
  #   @browser.create_blog.click
  #   expect(@browser.find_blog.displayed?).to eq(true)
  # end
  
  it 'creates a new blog' do
    @browser.create_blog
    expect(@browser.find_created_blog.displayed?).to eq(true)
  end

end