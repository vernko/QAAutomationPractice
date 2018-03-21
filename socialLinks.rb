require 'selenium-webdriver'
require 'rspec'
require_relative 'baseclass'

class Social < BaseClass
    def github_button
      @driver.find_element(:xpath => "//i[@class='fa fa-github']").click
      sleep 3
    end

    def linkedin_button
        @driver.find_element(:xpath => "//i[@class='fa fa-linkedin']").click
        sleep 3
    end

    def twitter_button
        @driver.find_element(:xpath => "//i[@class='fa fa-twitter']").click
        sleep 3
    end

    def facebook_button
        @driver.find_element(:xpath => "//i[@class='fa fa-facebook']").click
        sleep 3
    end

    def instagram_button
        @driver.find_element(:xpath => "//i[@class='fa fa-instagram']").click
        sleep 3
    end
end