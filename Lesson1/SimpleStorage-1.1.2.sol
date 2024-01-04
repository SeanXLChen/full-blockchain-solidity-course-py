// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.0;

contract SimpleStorage {

    uint256 public favoriteNumber;

    // define combined variables using struct
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    // instanciate a struct
    People public person = People({favoriteNumber: 2, name: "Madam"});

    // define a mapping type
    mapping(string => uint256) public nameToFavoriteNumber;

    function storeNum(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieveNum() public view returns(uint256) {
        return favoriteNumber;
    }

    // create a Dynamic array
    People[] public peopleArrayFree;

    // create a Fixed-size array
    People[5] public peopleArrayFixed;

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        peopleArrayFree.push(
            People({favoriteNumber: _favoriteNumber,name: _name})
            );
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}
