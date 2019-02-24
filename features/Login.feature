Feature: Login functionality with Facebook website

  Background:  The user is on the Home page on Facebook

    Scenario: Login with invalid credentials

          When User enters invalid username and password
          And Clicks on login in button
          Then Error message should be displayed to the user


    Scenario Outline: Signup with invalid data
      When User enters valid <firstname> and <surname>
      And Enters invalid <email_id> and valid <password>
      And Clicks on signup button
      Then Error message saying invalid email_id should be displayed


      Examples:
        |firstname | surname | email_id | password|
        |khkjkk    | klk123 | kjk@.com | klka45|
        |nxcvb     | ndcb12|nxbmail.com|  vcc22 |