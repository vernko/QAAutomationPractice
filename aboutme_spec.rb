require 'selenium-webdriver'
require 'rspec'
require_relative 'aboutme'

describe "" do
    before(:each) do
      @browser = BaseClass.new
      @browser.setup
    end

    after(:each) do
      @browser.close_browser
    end

    it 'goes to the about me page' do
      @browser.about_me
      # expect(@browser.about_me.displayed?).to eq(true)
    end
end