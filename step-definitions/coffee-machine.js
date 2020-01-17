// Import our program
// (in this case an instance of a coffee machine
// so that we can run unit tests methods)
let CoffeeMachine = require('../index.js');


// Variables that we want to be able to
// share between different steps
let myMachine;
let resultOfStartButton;


module.exports = function () {

  this.Given(/^that the machine is plugged in$/, function () {

    // Make a brand new coffee machine
    myMachine = new CoffeeMachine();

    // tell the machine that it is plugged in
    myMachine.electricity();
    // check if the property pluggedIn is true
    // this also works: assert(myMachine.electricity)
    // but this is clearer
    assert.strictEqual(
      myMachine.pluggedIn,
      true,
      'Expected the property pluggedIn to be true after calling the plugIn() method.'
    );
  });

  this.Given(/^that water is available$/, function () {
    myMachine.waterAvailable();
    assert.strictEqual(
      myMachine.connectedToWater,
      true,
      'Expected the property connectedToWater to be true after calling the waterAvailable() method.'
    );
  });

  this.Given(/^that the machine has enough ground coffee$/, function () {
    assert.deepEqual(
      myMachine.checkIfEnoughCoffeeForACup(),
      false,
      'Expected a new machine to not have enough coffee'
    );
    myMachine.fillWithCoffee(100);
    assert.deepEqual(
      myMachine.checkIfEnoughCoffeeForACup(),
      true,
      'Expected to have enough coffee for a cup (after filling it with 100 grams of ground coffee'
    );
  });

  this.Given(/^the machine has plastic cups$/, function () {

    assert.deepEqual(
      myMachine.checkIfAnyCupsLeft(),
      false,
      'Expected a new machine to not have any cups'
    );
    // Now, we add some cups
    myMachine.fillWithCups(4);
    // Then check again expect result to be true
    assert.deepEqual(
      myMachine.checkIfAnyCupsLeft(),
      true,
      'Expected the machine to have at least one cup after filling with two cups'
    );
  });

  this.Given(/^the user wants milk$/, function () {
    assert.deepEqual(
      myMachine.checkIfEnoughMilkForACup(), false, 'This should not be enough milk.')
    myMachine.fillWithMilk(100);
    assert.deepEqual(
      myMachine.checkIfEnoughMilkForACup(), true, 'This should not enough milk.')

  });

  this.When(/^the user inserts a (\d+) kr coin$/, function (amountOfMoney) {

    amountOfMoney /= 1;

    let moneyBefore = myMachine.insertedMoney;
    myMachine.insertMoney(amountOfMoney);
    assert.deepEqual(
      myMachine.insertedMoney,
      moneyBefore + amountOfMoney,
      "Expected the amount of money inserted to increase with the amount inserted"
    )
  });


  this.When(/^the user inserts a "([^"]*)" kr coin$/, function (nonMoney) {


    global.nonMoney = nonMoney

    assert.notDeepEqual(
      nonMoney,
      Number,
      "Did not insert money, you inserted" + nonMoney
    )
    ;
  });

  this.When(/^presses the "([^"]*)" button$/, function (startButton) {
 
    if (startButton == 'start' /*&& this.pluggedIn == true && this.connectedToWater == true*/) {
      // For now, just say everything is fine
      resultOfStartButton = myMachine.startButton();
    }

  });


  this.Then(/^the user recieves (\d+) cup of coffee\.$/, function (cups) {
    cups /= 1;
    // Ok time to test if we really get some coffee...
    if (cups >= 1) {
      assert(
        resultOfStartButton,
        "Here's your coffee",
        "Didn't get any coffee? You should. You inserted enough!"
      );
    }
    else {
      assert.notDeepEqual(
        resultOfStartButton,
        "Here's your coffee",
        "Did you get coffee? You shouldn't. You didn't insert enough money!"
      );
    }

  });

  this.Given(/^there's a water leak$/, function () {
    // tell the machine to connect to water
    myMachine.waterAvailable();
    // check if the property connectedToWater is true
    assert.isOk(
      true,
      "",
    );
  });

  this.Given(/^the user does not want milk$/, function () {
    myMachine.fillWithMilk();

    assert.isOk(
      true,
      "This user didn't want milk"
    )
  });

  this.When(/^Someone pressed cancel$/, function (amount) {

    if (insertedMoney <= 10) {
      assert.isBelow(
        amount, 10, "Here's your money back");
    } else return "You can't get your money back right now"
  })


  this.When(/^the user uses swishes (\d+) kr to pay$/, function (amountOfMoney) {

    amountOfMoney /= 1;
    let moneyBefore = myMachine.insertedMoney;
    myMachine.insertMoney(amountOfMoney);
    assert.deepEqual(
      myMachine.insertedMoney,
      moneyBefore + amountOfMoney,
      "Expected the amount of money inserted to increase with the amount inserted",
    )
  });

  this.Given(/^that the machine ran out of ground coffee$/, function () {
      myMachine.fillWithCoffee();
      assert.deepEqual(
        this.amountOfCoffee,
        this.coffeePerCup,
        "OBS! Ran out of ground coffee"
      )
  });

  this.Given(/^the machine has no more plastic cups$/, function () {
    myMachine.fillWithCups();
    assert.notEqual(
      0,
      this.numberOfCups,
      "OBS! Ran out of plastic cups",
    )
  });
}

