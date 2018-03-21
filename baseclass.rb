class BaseClass
    def initialize
        @driver =  Selenium::WebDriver.for :chrome
        @admin_email = "test@test.com"
        @admin_password = "Test1234!"
        @url = "localhost:3000"
        @random_title = Faker::StarWars.planet
        @random_subtitle = Faker::StarWars.droid
        @random_content = Faker::VForVendetta.speech
        @random_technology = Faker::ProgrammingLanguage.name
    end

    def setup
        @driver.manage.window.maximize
        @driver.navigate.to @url
    end

    def find_element_with_wait(element, time = 5)
        wait = Selenium::WebDriver::Wait.new(timeout: time) # seconds
        begin
            wait.until {
                element = @driver.find_element(element)
                element if element.displayed?
            }
        rescue Selenium::WebDriver::Error::TimeOutError
            puts "Couldn't find #{element}"
            return false
        end
    end

    def type_things (element, text)
        element.send_keys text
    end
    
    def close_browser
        @driver.quit
    end
end