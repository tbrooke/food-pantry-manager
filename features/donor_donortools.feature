Feature: Get Donors from Donortools
  As a User I want to find a Donor in Donortools

  Scenario: Adding a new Donation
    Given I visit the donations page
    When I search for 'Mary Brooks'
    And 'Mary Brooks' is in Donors
    Then I should see 'Mary Brooks' in the search box


Scenario: Adding a new Donation
    Given I visit the donations page
    When I search for 'Mary Brooks'
    And "Mary Brooks" is not in Donors
    And I search for 'Mary Brooks' in DonorTools
    And 'Mary Brooks' is in DonorTools
    Then I should see 'Mary Brooks' in the search box



