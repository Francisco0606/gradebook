Feature: Add Grade
    Scenario: signed in as a Teacher and adding a grade
        Given there are grades in the gradebook
        And I sign in as a teacher?
        When I visit the homepage
        And I click "New Grade"
        And I fill out the form and submit
        Then I should have added a grade
    
     Scenario: signed in as a TA and adding a grade
        Given there are grades in the gradebook
        And I sign in as a ta?
        When I visit the homepage
        And I click "New Grade"
        And I fill out the form and submit
        Then I should have added a grade