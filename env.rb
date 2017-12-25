require 'xpath'

require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.default_selector  = :css

url = "https://www.facebook.com/"

Capybara.register_driver :selenium_chrome do |app|
    if OS.windows?
        Selenium::WebDriver::Chrome.driver_path = "C:\\SeleniumDrivers\\chromedriver.exe"
    end

    browser = Selenium::WebDriver.for(:remote, :url => url, :desired_capabilities => capabilities)

    Before do |scenario|
        @browser = browser
    end

    at_exit do
        browser.quit
    end