Feature: login featured

@valid
Scenario: Try to use app without login
Given I am on the start screen
And I choose try us out
And I choose skip
Then I can see app main page

@valid
Scenario: Forgot password
Given I am on the start screen
And I choose i have an account
Then I am choose forgot my password
Then I enter valid email credential
Then I am wait for confirm

@valid
Scenario: Try to login with valid credentials
Given I am on the start screen
And I choose i have an account
And I enter valid credentials
Then I am wait for successful login

@invalid
Scenario: Try to login with invalid email format
Given I am on the start screen
And I choose to sign up with Email
And I enter invalid email format credentials
Then I am wait for the wrong email format alert

@invalid
Scenario: Try to login with with not exist credentials
Given I am on the start screen
And I choose to sign up with Email
And I enter not exist user credentials
Then I am wait for the wrong email or password alert