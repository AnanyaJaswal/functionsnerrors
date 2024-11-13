
#  Smart Contract Project: Implementing require(), assert(), and revert() Statements
## OVERVIEW


The Solidity program demonstrates basic error handling using require(), assert(), and revert() statements. It includes functions to add, check, and remove K-pop albums in a small local store scenario. This contract is designed for those new to Solidity and error handling on the Ethereum blockchain.

## Description
The Albums contract is a smart contract written in Solidity for the Ethereum blockchain. It manages a store's inventory of K-pop albums with the feature  to
Add Albums (ensuring that the number of albums added is greater than zero),
to check albums (ensuring that the total number of albums does not exceed the maximum limit) and to remove Albums (ensuring that the number of albums to be removed does not exceed the current inventory).This contract demonstrates the use of error handling mechanisms in Solidity, providing a secure and standard way to manage a small store's inventory.

## Getting Started
## Executing program
To run this program, you will need to use Remix, an online Solidity IDE. Follow these steps to get started:

Visit Remix: Go to https://remix.ethereum.org/. Create a New File: Click on the "+" icon in the left-hand sidebar to create a new file. Save the File: Save the file with a .sol extension (here, kpopalbums1.sol). Copy and paste the following code into the new file:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract KpopAlbums {
    uint public totalAlbums;
    uint constant max_albums = 250; 
  
    function addAlbums(uint albums) public {
        require(albums > 0, "NO NO NO ! The number of albums must be greater than zero.");
        totalAlbums += albums;
    }
  
    function checkAlbums() public view {
        assert(totalAlbums <= max_albums);
    }

    function removeAlbums(uint albums) public {
        if (albums > totalAlbums) {
            revert("Oops! You can't remove more albums than currently exist.");
        }
        totalAlbums -= albums;
    }
}

```

To run the program, follow these steps:

Compile the Code:

Click on the "Solidity Compiler" tab in the left-hand sidebar. Ensure the "Compiler" option is set to a compatible version, such as "0.8.0". Click on the "Compile kpopalbums1.sol" button. Deploy the Contract:

Click on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Albums" contract from the dropdown menu. Click on the "Deploy" button. Interact with the Contract:
1). Adding Albums: Call the addAlbums function with the number of albums to add.
2). Checking Albums: Call the checkAlbums function to ensure the total number of albums does not exceed the maximum limit.
3). Removing Albums: Call the removeAlbums function with the number of albums to remove.

 ## Authors
Ananya Jaswal

[LinkedIn](www.linkedin.com/in/ananya-jaswal-8545b1275)







