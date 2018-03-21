require 'selenium-webdriver'
require 'rspec'
require_relative 'baseclass'

class Social < BaseClass
    def github_button
      @driver.find_element_with_wait(:xpath => "//i[@class='fa fa-github']").click
    end

    def linkedin_button
      @driver.find_element_with_wait(:xpath => "//i[@class='fa fa-linkedin']").click
    end

    def twitter_button
      @driver.find_element_with_wait(:xpath => "//i[@class='fa fa-twitter']").click
    end

    def facebook_button
      @driver.find_element_with_wait(:xpath => "//i[@class='fa fa-facebook']").click
    end

    def instagram_button
      @driver.find_element_with_wait(:xpath => "//i[@class='fa fa-instagram']").click
    end
end