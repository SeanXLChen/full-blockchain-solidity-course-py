// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.0;

// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.6.0;

contract SimpleStorage {
    // State Variable (this will get initialized to 0!)
    uint256 public favoriteNumber = 3;

    // function changes the state variable
    function set(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    // view function won't change any state of the contract
    function get() public view returns (uint256) {
        return favoriteNumber;
    }

    // pure function won't even access any state of the contract
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }
}