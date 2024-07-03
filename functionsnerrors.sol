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
