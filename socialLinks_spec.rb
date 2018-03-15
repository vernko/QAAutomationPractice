require 'selenium-webdriver'
require 'rspec'
require_relative 'socialLinks'

describe "Social Links" do
    before(:each) do
        @browser = BaseClass.new
        @browser.setup
    end

    after(:each) do
        @browser.close_browser
    end
    
    it 'goes to Github' do
        @browser.github_button
        # expect(@browser.github_button.displayed?).to eq(true)
    end

    it 'goes to LinkedIn' do
        @browser.linkedin_button
        # expect(@browser.)
    end
    
    it 'goes to Twitter' do
        @browser.twitter_button
        # expect(@browser.)
    end

    it 'goes to Facebook' do
        @browser.facebook_button
        # expect(@browser.)
    end

    it 'goes to Instagram' do
        @browser.instagram_button
        # expect(@browser.)
    end
end