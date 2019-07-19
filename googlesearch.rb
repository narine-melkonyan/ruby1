require 'selenium-webdriver'
require 'page-object'

class GoogleSearch
   include PageObject

   def initialize(driver)
     @driver = driver
   end

   def googlelogo
     logo ={
         css: "[id='hplogo']"
     }
     @driver.find_element(logo)
   end

   def googlesearch
     searchbox ={
         css: "[name='q']"
     }
     @driver.find_element(searchbox)
   end

   def submitbutton
   submit ={
       css: "[name='btnK']"
   }
   @driver.find_element(submit)
   end
   def searchresult
   result ={
       css: "[id='resultStats']"
   }
    @driver.find_element(result)
   end

   def navigate_to_google_site()
   @driver.get('http://www.google.com/')
   end

end
