Feature: Walking Skeleton

  @wip
  Scenario: Process the preference
    Given my preference is "WARM"
    When I ask for suggestion
    Then I get "BERMUDA" 

  @wip
  Scenario: Call the wheater API
    When I ask for in Buenos Aires
    Then I get a temperate in Celcius between 0 and 45
