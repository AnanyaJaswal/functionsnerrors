
# Smart Contract Project: Implementing require(), assert(), and revert() Statements
## OVERVIEW

This smart contract shows how to handle errors in Solidity using require(), assert(), and revert() statements. It includes functions which perform division operations and also ensures that the denominator is not zero , preventing division by zero errors. It demonstrates the use of these error-handling mechanisms to ensure safe  execution of operations.

## DISCRIPTION

This program is a simple contract written in Solidity, which is a programming language used for developing smart contracts on the Ethereum blockchain. This contract has functions that performs division operations by ensuring that the denominator is not zero. It uses the concept of functions and error handling.

The Require function sets a new value for the result if it meets the condition that the input denominator is greater than zero. It uses require() for input validation.

The Assert function sets a new value for the result and uses assert() to ensure that the denominator is not zero. If the denominator is zero then it will give a generic error .

The Revert function performs a division but requires that the Denominator cannot be zero. If the denominator is zero, the function will revert with a specific error message using the revert() statement. Here the specific message is "Denominator cannot be zero, please provide a valid denominator which must be a positive number".

It's essential to use these error handling statements wisely to maintain the correctness of your smart contract.


## Getting Started

### Executing Program

To run the program , make use of Remix which is an online Solidity IDE .

To start , go to the remix website at [Remix IDE](https://remix.ethereum.org/).

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (here, functionsnerrors.sol). Copy and paste the following code into the file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DivideByZero {
    uint public result;

    function Require(uint numerator, uint denominator) public {
        require( denominator != 0, "Denominator cannot be zero");
        result = numerator / denominator;
    }

    function Assert(uint numerator, uint denominator) public {
        assert( denominator != 0);
        result = numerator / denominator;
    }

    function Revert(uint numerator, uint denominator) public pure returns (uint) {
        if( denominator == 0){

        revert("Denominator cannot be zero , please provide a valid denominator which must be a positive number");
        }
        return numerator / denominator;
    }
}
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" , and then click on the "Compile functionsnerrors.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "DivideByZero-functionsnerrors.sol" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, interact with it by calling the Require, Assert, and Revert functions to set the result and perform division. Use the input fields to provide values for numerator and denominator. You can click on the respective function buttons to execute the functions and observe the results and error messages.

This smart contract clearly demonstrates how to handle errors effectively, preventing unintended operations and ensuring safe execution of functions.

 
 ## Authors
Ananya Jaswal

[LinkedIn](www.linkedin.com/in/ananya-jaswal-8545b1275)
