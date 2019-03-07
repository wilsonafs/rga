require "capybara/cucumber"
require "selenium-webdriver"
require "site_prism"
require "pry-byebug"

Capybara.register_driver :selenium do |app|
    args = %w[window-size=1440,900 headless disable-gpu]

    caps = Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions' => {
            'args' => args
        }
    )

    Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps)
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 10
end

# Capybara.configure do |config|
#     config.default_driver = :selenium_chrome
#     config.app_host = ENV['url_padrao']
#     config.default_max_wait_time = 8
# end