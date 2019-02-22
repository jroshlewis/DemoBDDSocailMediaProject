Feature: Login functionality with Facebook website

    Scenario: Login with invalid credentials
          Given The user is on the Home page on Facebook
          When User enters invalid username and password
          And Clicks on login in button
          Then Error message should be displayed to the user