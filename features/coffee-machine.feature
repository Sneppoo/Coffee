Feature:
  As a coffee buyer
  I want a basic machine that
  I can put a 10 kr coin in or swish
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
    And presses the "start" button
    Then the user recieves <cup> cup of coffee.
    And presses the "cancel" button


    Examples:
      | money1 | money2 | money3 | money4 | money5 | money6 | money7 | money8 | money9 | money10 | cup |
      | 5      | 5      | 0      | 0      | 0      | 0      | 0      | 0      | 0      | 0       | 1   |


  Scenario Outline: "Person paid for with swish"
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough ground coffee
    And the machine has plastic cups
    And the user does not want milk
    When the user uses swishes <swish> kr to pay
    And presses the "start" button
    Then the user recieves <cup> cup of coffee.

    Examples:
      | swish | cup |
      | 10    | 1   |


  Scenario Outline: "Person paid to little with swish"
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough ground coffee
    And the machine has plastic cups
    And the user does not want milk
    When the user uses swishes <swish> kr to pay
    And presses the "start" button
    Then the user recieves <cup> cup of coffee.

    Examples:
      | swish | cup |
      | 1     | 0   |


  Scenario Outline: "Someone pressed start with no money"
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough ground coffee
    And the machine has plastic cups
    And the user does not want milk
    And presses the "start" button
    Then the user recieves <cup> cup of coffee.

    Examples:
      |  | cup |
      |  | 0   |


  Scenario Outline: "Machine ran out of ground coffee"
    Given that the machine is plugged in
    And that water is available
    And that the machine ran out of ground coffee
    And the machine has plastic cups
    And the user does not want milk
    When presses the "start" button
    Then the user recieves <cup> cup of coffee.

    Examples:
      |  | cup |
      |  | 0   |


  Scenario Outline: "Thirsty customer, wants 20 cups"
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough ground coffee
    And the machine has plastic cups
    And the user does not want milk
    When the user uses swishes <swish> kr to pay
    And presses the "start" button
    Then the user recieves <cup> cup of coffee.

    Examples:
      | swish | cup |
      | 200   | 20  |


  Scenario Outline: "We ran out of cups"
    Given that the machine is plugged in
    And that water is available
    And that the machine has enough ground coffee
    And the machine has no more plastic cups
    When the user uses swishes <swish> kr to pay
    And presses the "start" button
    Then the user recieves <cup> cup of coffee.

    Examples:
      | swish | cup |
      | 10    | 0   |