require 'selenium-webdriver'
require 'rspec'
require_relative 'contactme'

describe "Contact" do
    before(:each) do
      @browser = ContactMe.new
      @browser.setup
    end

    after(:each) do
      @browser.close_browser
    end

    it 'goes to the contact page' do
      @browser.contact
      expect(@browser.contact.displayed?).to eq(true)
    end
end