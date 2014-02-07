Feature: Check Balance L2
  As an airmiles card holder
  I want to sign in and view my balance 
  After viewing my balance I want to sign out

  Scenario Outline: Login on home page
    When I enter my <collector number> in the Collector Number input field
    Then I should see "<name>" in the header
    Scenarios:
    	| collector number	| name		|
      	| 51000088201       | GREGORY! 	|