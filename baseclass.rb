class BaseClass
    def initialize
        @driver =  Selenium::WebDriver.for :chrome
        @admin_email = "test@test.com"
        @admin_password = "Test1234!"
        @url = "localhost:3000"
        # @random_name = Faker::DragonBall.character
        # @random_email = Faker::Internet.email
        # @random_password = Faker::Internet.password
        # # @password_confirmed = @random_password
        # NOTE: These don't all need to be in the baseclass initialize method, because they're only going to be used in certain classes
        # I moved these to the Register class as an example. I only commented them out here, but normally they'd be deleted here entirely.
        @random_title = Faker::StarWars.planet
        @random_subtitle = Faker::StarWars.droid
        @random_content = Faker::VForVendetta.speech
        @random_technology = Faker::ProgrammingLanguage.name
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