class BaseClass
    def initialize
        @driver =  Selenium::WebDriver.for :chrome
        @admin_email = "test@test.com"
        @admin_password = "Test1234!"
        @url = "localhost:3000"
    end

    def setup
        @driver.manage.window.maximize
        @driver.navigate.to @url
    end

    def type_things (element, text)
        element.send_keys text
    end
    
    def close_browser
        @driver.quit
    end
end