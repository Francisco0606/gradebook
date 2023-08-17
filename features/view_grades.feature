Feature: View Grades
    Scenario: view grades from homepage as a teacher
      Given there are grades in the gradebook
      And I sign in as a teacher?
      When I visit the homepage
      Then I should see everyone's grades

    Scenario: view specific grade from homepage as a teacher
      Given there are grades in the gradebook
      And I sign in as a teacher?
      When I visit the homepage
      Then I should see everyone's grades
      And I click "Show" on a post
      Then I should see that user's detailed grade information


    Scenario: view grades from homepage as a ta
      Given there are grades in the gradebook
      And I sign in as a ta?
      When I visit the homepage
      Then I should see everyone's grades

    Scenario: view specific grade from homepage as a ta
      Given there are grades in the gradebook
      And I sign in as a ta?
      When I visit the homepage
      Then I should see everyone's grades
      And I click "Show" on a post
      Then I should see that user's detailed grade information

    
    Scenario: Sorting grades by lowest and highest value
      Given there are grades in the gradebook
      And I sign in as a teacher?
      When I visit the homepage
      And I click "Ascending"
      Then I should see the grades listed in ascending order

    Scenario: Sorting grades by highest and lowest value
      Given there are grades in the gradebook
      And I sign in as a teacher?
      When I visit the homepage
      And I click "Descending"
      Then I should see the grades listed in descending order

    Scenario: Sorting grades by lowest and highest value
      Given there are grades in the gradebook
      And I sign in as a ta?
      When I visit the homepage
      And I click "Ascending"
      Then I should see the grades listed in ascending order

    Scenario: Sorting grades by highest and lowest value
      Given there are grades in the gradebook
      And I sign in as a ta?
      When I visit the homepage
      And I click "Descending"
      Then I should see the grades listed in descending order