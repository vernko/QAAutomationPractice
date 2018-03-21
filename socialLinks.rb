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
    # NOTE: For pretty much all of these you're going to have to look into how to switch window handles because it'll still be looking on your homepage rather than on the new tab that opens up.
    # Probably put those methods in the baseclass though, since you might need to use them elsewhere as well.
end