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
      @browser.contact.click
      expect(@browser.find_contact_me.displayed?).to eq(true)
    end

    it 'lets you call me' do
      @browser.call_me.click
      # expect(@browser.call_me.displayed?).to eq(true)
    end

    # it 'lets you email me' do
    #   @browser.email_me.click
    #   #expect(@browswer.email_me.displayed?).to eq(true)
    # end

    # it 'goes to my LinkedIn' do
    #   @browser.linkedin.click
    #   #expect()
    # end
end