var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // write unit tests here in the form of "it should do something..."
  it('it has a sample test', function(){
    assert.equal(true, true)
  })

  it('it can add', function(){
    calculator.add(5)
    assert.equal(5, calculator.runningTotal)
  })

  it('it can subtract', function(){
    calculator.subtract(5)
    assert.equal(-5, calculator.runningTotal)
  })

  it('it can multiply', function(){
    calculator.previousTotal = 5
    calculator.multiply(5)
    assert.equal(25, calculator.runningTotal)
  })

  it('it can divide', function(){
    calculator.previousTotal = 25
    calculator.divide(5)
    assert.equal(5, calculator.runningTotal)
  })

  it('it can click on a number and set new total', function(){
    calculator.previousTotal = 25
    calculator.numberClick(5)
    assert.equal(5, calculator.runningTotal)
    assert.equal(false, calculator.newTotal)
  })

  it('it can click on an operator', function(){
    calculator.previousTotal = 25
    calculator.previousOperator = '+'
    calculator.numberClick(5)
    calculator.operatorClick('*')
    assert.equal(30, calculator.runningTotal)
    assert.equal('*', calculator.previousOperator)
  })

  it('it can clear', function(){
    calculator.previousTotal = 25
    calculator.previousOperator = '+'
    calculator.clearClick()
    assert.equal(null, calculator.previousTotal)
    assert.equal(null, calculator.previousOperator)
  })

});
