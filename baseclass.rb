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

    def find_element_with_wait(what, time = 5)
        wait = Selenium::WebDriver::Wait.new(timeout: time) # seconds
        begin
        wait.until {
            element = @driver.find_element(what)
            element if element.displayed?
        }
        rescue Selenium::WebDriver::Error::TimeOutError
        puts "Couldn't find #{what}"
        return false
        end
    end

    def login_user
      login_header = find_element_with_wait(link: "Login")
      login_header.click
      sleep 3
      
      email_field = @driver.find_element(:xpath => "//input[@id='user_email']")
      type_things(email_field, @admin_email)
      
      password_field = @driver.find_element(:xpath => "//input[@id='user_password']")
      type_things(password_field, @admin_password)
      
      login_button = @driver.find_element(:xpath => "//input[@value='Log in']")
      login_button.click
    end

    def type_things (element, text)
        element.send_keys text
    end
    
    def close_browser
        @driver.quit
    end
end