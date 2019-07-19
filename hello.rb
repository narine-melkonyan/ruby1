require 'selenium-webdriver'
require 'page-object'
require_relative 'googlesearch'
Selenium::WebDriver::Chrome::Service.driver_path = 'C:\\Users\\Narine\\Downloads\\chromedriver.exe'
@driver = Selenium::WebDriver.for :chrome
page = GoogleSearch.new(@driver)
page.navigate_to_google_site
puts page.googlelogo.displayed?
page.googlesearch.send_keys('hello')
page.submitbutton.click
puts page.searchresult.displayed?
@driver.quit

