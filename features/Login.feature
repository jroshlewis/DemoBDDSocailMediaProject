Feature: Login functionality with Facebook website

    Scenario: : Login with invalid credentials
          Given The user is on the Home page on Facebook
          When User enters invalid username and password
          And Clicks on login in button
          Then Error message should be displayed to the user


    Scenario Outline: Signup with invalid data

          Given The user is on the Home page on Facebook
          When User enters valid <firstname> and <surname>
          And Enters invalid <email_id> and valid <password>
          And Clicks on signup button
          Then Error message saying invalid email_id should be displayed

            Examples: |firstname | surname | email_id | password|
                      |;kdsjfk;  |kdnal    |sdlkfmail.com|ldjfaf|
                      |;kree;  |kdn733    |er@.com|ldjfsddaf|
                     |;kree;  |kdn733    |er@.com|ldjfsddaf|
                    |;kree;  |kdn733    |er@.com|ldjfsddaf|




