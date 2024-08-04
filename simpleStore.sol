// SPDX-License-Identifier:MIT
pragma solidity 0.8.26;

contract SimpleStorage {
    uint256 public number;
    uint256[] public arrayOfNumber;
    uint256[30] public arrayIndexOfNumber;
    struct People{
        string name;
        uint256 number;
    }

    People[] public dynamicArrayOfPersion;

    mapping (string name => uint256 number) public nameToNumber;

    function setNumber (uint256 newNumber)public {
        number = newNumber;
    }

    function pushToArrayOfNumber(uint256 newNumber) public {
        arrayOfNumber.push(newNumber);
    }

    function pushArrayIndexOfNumber(uint256 index , uint256 newNumber) public{
        arrayIndexOfNumber[index] = newNumber;
    }

    function pushDynamicArrayOfPersion(string memory name, uint256 _number) public {
        dynamicArrayOfPersion.push(People({name:name, number:_number}));
    }

    function findIndexByName(string memory name , uint256 _number)public {
        nameToNumber[name] =_number;
    }
}