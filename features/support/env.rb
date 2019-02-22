require 'selenium-webdriver'

Before   do

  # setting browser path
  Selenium::WebDriver::Firefox.driver_path="C:/RoshTesting/Tools/Browsers/geckodriver.exe"

  # creating firefox browser instance
  $driver = Selenium::WebDriver.for :firefox

  $driver.get("https://www.facebook.com/")

end

After   do
  $driver.close
end