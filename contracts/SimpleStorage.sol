// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // solidity versions

contract SimpleStorage {
    uint256 favoriteNumber; // 0

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    // view and pure, don't cost gas only when called off-chain like from a front end or foundry console
    // view is basically a getter method
    // pure is basically a pure math method, like a + b = c, return c
    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    // calldata, memory, storage
    // calldata is temporary variables that cannot be modified
    // memory is temporary variables that can be modified
    // storage is permanent varialbes that can be modified
    // temporary vs permanent mean the variable exists outside of this function call
    // these are not used for primitive types
    function addPerson(string memory _name, uint _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}