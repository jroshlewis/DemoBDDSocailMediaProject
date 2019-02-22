Given /^The user is on the Home page on Facebook$/ do
      title = $driver.title
      if(title.eql?"Facebook - Log In or Sign Up")
        puts "Title matched = #{title} "
      end
end

When /^User enters invalid username and password$/ do
      $driver.find_element(:id,'email').send_key("awqe.com")
      $driver.find_element(:id,'pass').send_key("a123")
end

When /^Clicks on login in button$/ do
      $driver.find_element(:xpath,"//input[@type='submit' and @id='u_0_2']").click
end

Then /^Error message should be displayed to the user$/ do
       wait = Selenium::WebDriver::Wait.new(:timeout => 30)
       wait.until{$driver.find_element(:xpath,"//*[contains(text(),'The email address or phone number that you've entered doesn't match any account.')]")}

      errMsg = $driver.find_element(:xpath,"//*[contains(text(),'The email address or phone number that you've entered doesn't match any account.')]").displayed?
      if(errMsg.eql?true)
        puts"Error Message verified and Test Case Pass"
      else puts "Test Case Fail"
      end
end
