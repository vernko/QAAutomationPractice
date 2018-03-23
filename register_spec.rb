require 'selenium-webdriver'
require 'rspec'
require 'faker'
require_relative 'register'

describe "Registers New Users" do
    before(:each) do
      @browser = Register.new
      @browser.setup
    end

    after(:each) do
      @browser.close_browser
    end

    it 'registers a new user' do
      @browser.sign_up
      expect(@browser.logout_header.displayed?).to eq(true)
    end
end