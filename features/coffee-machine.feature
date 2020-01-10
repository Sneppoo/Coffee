

Feature:
  As a coffee buyer
  I want a basic machine that
  I can put a 10 kr coin in
  and get a black cup of coffee back
  because I crave caffeine.

  Scenario Outline: "First test coffee drinkers."
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough ground coffee
    And the machine has plastic cups
    And the user wants milk
    When the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    And presses the "start" button
    Then the user recieves <cup> cup of coffee.

    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 | cup |
      | 10     | 0      | 1      | 0      | 0      | 0      | 0      | 0      | 0      | 0       | 1   |
      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1      | 1       | 1   |
      | 1      | 1      | 1      | 0      | 0      | 0      | 0      | 0      | 0      | 0       | 0   |

  Scenario Outline: "OPS! There's a water leak!"
    Given that the machine is plugged in
    And there's a water leak
    And that the machine has enough ground coffee
    And the machine has plastic cups
    And the user wants milk
    When the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    And presses the "start" button
    Then the user recieves <cup> cup of coffee.

    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 | cup |
      | 10     | 0      | 1      | 0      | 0      | 0      | 0      | 0      | 0      | 0       | 1   |


  Scenario Outline: "Someone put something in the machine!"
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough ground coffee
    And the machine has plastic cups
    And the user wants milk
    When the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    And presses the "start" button
    Then the user recieves <cup> cup of coffee.


    Examples:
      | money1        | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 | cup |
      | "Skjortknapp" | 1      | 1      | 0      | 0      | 0      | 0      | 0      | 0      | 0       | 0   |



  Scenario Outline: "This person did not want milk"
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough ground coffee
    And the machine has plastic cups
    And the user does not want milk
    When the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    And presses the "start" button
    Then the user recieves <cup> cup of coffee.

    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 | cup |
      | 10     | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       | 1   |


  Scenario Outline: "Someone pressed cancel before the coffe was made"
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough ground coffee
    And the machine has plastic cups
    And the user does not want milk
    When the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    And presses the "cancel" button
    Then the user recieves <cup> cup of coffee.

    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 | cup |
      | 5      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       | 0   |


  Scenario Outline: "Someone pressed cancel after the coffe was made"
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough ground coffee
    And the machine has plastic cups
    And the user does not want milk
    When the user inserts a <money1> kr coin
    And the user inserts a <money2> kr coin
    And the user inserts a <money3> kr coin
    And the user inserts a <money4> kr coin
    And the user inserts a <money5> kr coin
    And the user inserts a <money6> kr coin
    And the user inserts a <money7> kr coin
    And the user inserts a <money8> kr coin
    And the user inserts a <money9> kr coin
    And the user inserts a <money10> kr coin
    Then the user recieves <cup> cup of coffee.
    And presses the "cancel" button


    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 | cup |
      | 5      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       | 0   |
