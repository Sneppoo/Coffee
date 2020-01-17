// Creating a new class that defines how a coffee machine should work

class CoffeeMachine {

  constructor() {// some settings
    this.pluggedIn = false;
    this.connectedToWater = false;
    this.numberOfCups = 0;
    this.insertedMoney = 0;
    this.amountOfCoffee = 0;
    this.amountOfMilk = 0;
    this.coffeePerCup = 13; // in grams
    this.pricePerCup = 10; // in SEK
    this.coffeeWithMilkPrice = 13;
    this.hotCocoPrice = 11;
    this.withMilk = false;
    this.milkPerCup = 10;

  }

  // maintenance

  electricity() {
    this.pluggedIn = true;
  }

  waterAvailable() {
    this.connectedToWater = true;
  }

  fillWithMilk(amount) {
    this.amountOfMilk += amount;
  }

  fillWithCoffee(amount) {
    // add amount to total amount of 
    // ground coffee in the machine
    this.amountOfCoffee += amount;
  }

  fillWithCups(amount) {
    // add amount of cups to the
    // total number of cups in the machine
    this.numberOfCups += amount;
  }

  // user choices

  insertMoney(inserted) {
    // add inserted money to total
    // money inserted so far
    if (typeof inserted !== 'number') {
      throw (new Error('You must insert money, not ' + nonMoney));
    }
    this.insertedMoney += inserted;
  }

  cancelButton() {
    if(insertMoney <=10) {
      return this.insertedMoney;

    }else return "No money back once, you've gotten your coffee"
  }

  startButton() {
    // here we will need to call
    // a number of internal methods
    // (se below)
    // in the correcto order
    // and abort if not enough coffee etc

    // FOR NOW JUST RETURN "here's your coffee"
    // if there is enough money inserted
    
    if (this.insertedMoney >= this.pricePerCup && this.pluggedIn == true && this.connectedToWater == true) {
      
      return "here's your coffee";
      
    }
  }


  makeCoffee() {
    this.amountOfCoffee - 13;
    this.numberOfCups - 1;
  }

  pressWithMilkButton() {
    this.withMilk = true;

  }

  dispenseCup() {
    this.numberOfCups -1;
  }

  dispenseCoffee() {
    this.amountOfCoffee -13;
  }

  paidForWithSwish(){
    if (this.insertedMoney >= this.pricePerCup) 
      return "Here's your coffee";
      else "Du måste swisha mer pengar"
  }

  checkIfEnoughCoffeeForACup() {
    return this.amountOfCoffee >= this.coffeePerCup;
  }
  checkIfEnoughMilkForACup() {
    return this.amountOfMilk >= this.milkPerCup;
  }

  checkIfAnyCupsLeft() {
    return this.numberOfCups >= 1;
  }

}

// Export the CoffeeMachine class
module.exports = CoffeeMachine;