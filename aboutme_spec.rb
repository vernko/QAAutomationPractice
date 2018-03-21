require 'selenium-webdriver'
require 'rspec'
require_relative 'aboutme'

describe "About Me" do
    before(:each) do
      @browser = AboutMe.new
      @browser.setup
    end

    after(:each) do
      @browser.close_browser
    end

    it 'goes to the about me page' do
      @browser.know_me.click
      expect(@browser.find_about_me.displayed?).to eq(true)
    end
end