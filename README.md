# Studying Capybara Automation Best Practices 

The following is an example of the use of automated regression tests, I'm using Selenium Webdriver, Capybara with Page Objects and Cucumber.

## Getting Started

We have the scenarios at **features >> specs**

### Features
#### Find an especific office
#### Translate page to another language
#### Do a search

## Env
* Ruby 2.5.1
* Capybara (Selenium)
* Cucumber
* Page Objects

## Running the tests
* First run ```bundle install``` to install the dependences
* Then run ```BROWSER=headless cucumber``` to run in headless mode or just ```cucumber```to run default with Chrome