// sepolia testnet上用这个创建了一个contract
// https://sepolia.etherscan.io/address/0x8B86e9e68045166E40a13b1B512bf8a029365330

// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.0;

contract SimpleStorage {

    // combined variables using struct
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    People public person = People({favoriteNumber: 2, name: "Madam"});

    // create a Dynamic array
    People[] public peopleArrayFree;

    // create a Fixed-size array
    People[5] public peopleArrayFixed;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        peopleArrayFree.push(
            People({favoriteNumber: _favoriteNumber,
                name: _name}));
    }

}