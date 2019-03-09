require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "pry-byebug"

BROWSER = ENV['BROWSER']

Capybara.register_driver :headless do |app|
    args = %w[window-size=1440,900 headless disable-gpu]

    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => {
            'args' => args
        }
    )

    Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps)
end

Capybara.configure do |config|
    if BROWSER 
        config.default_driver = BROWSER.to_sym
    else
        config.default_driver = :selenium_chrome
    end
    config.default_max_wait_time = 10
end

