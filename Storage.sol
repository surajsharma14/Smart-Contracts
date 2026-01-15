// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Storage {
    uint256 public favouriteNumber;

    function store(uint256 _favoriteNumber) public {
        favouriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256){
        return favouriteNumber;
    }

}
