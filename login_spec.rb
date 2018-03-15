require 'selenium-webdriver'
require 'rspec'
require_relative 'login'

describe "Log-in" do
    before(:each) do
        @browser = Login.new
        @browser.setup
    end

    after(:each) do
        @browser.close_browser
    end

    it 'logs in' do
        @browser.login
        expect(@browser.logout_header.displayed?).to eq(true)
    end
end