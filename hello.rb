require 'selenium-webdriver'
Selenium::WebDriver::Chrome::Service.driver_path = 'C:\\Users\\Narine\\Downloads\\chromedriver.exe'
@driver = Selenium::WebDriver.for :chrome
@driver.get('http://www.google.com/')
puts @driver.find_element(id: 'hplogo').displayed?
searchbox ={
    css: "[name='q']"
}
s = @driver.find_element searchbox
puts s.displayed?
s.send_keys('hello')
c = @driver.find_element(name: 'btnK')
puts c.displayed?
c.click
@driver.quit

