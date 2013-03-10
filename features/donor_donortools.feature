Feature: Get Donors from Donortools
  As a User I want to find a Donor or enter a new one

  Scenario: Adding a new Donation with local donor 
    Given I visit the donations page
    When I search for 'Mary Brooks'
    And 'Mary Brooks' is in Donors
    Then I should see 'Mary Brooks' in the search box


Scenario: Adding a new Donation with Donortools donor
    Given I visit the donations page
    When I search for 'Mary Brooks'
    And "Mary Brooks" is not in Donors
    And I search for 'Mary Brooks' in DonorTools
    And 'Mary Brooks' is in DonorTools
    Then I should see 'Mary Brooks' in the search box



Scenario: Adding a new Donation with new donor
    Given I visit the donations page
    When I search for 'Mary Brooks'
    And "Mary Brooks" is not in Donors
    And I search for 'Mary Brooks' in DonorTools
    And 'Mary Brooks' is not in DonorTools
    Then I should be able to add 'Mary Brooks'



