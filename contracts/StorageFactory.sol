// SPDX-License-Identifier: MIT
import"./SimpleStorage.sol";

pragma solidity ^0.6.0;

contract StorageFactory is SimpleStorage {
    SimpleStorage[] public SimpleStorageArray;

    function CreateSimpleContract() public {
       SimpleStorage SimpleStorage = new SimpleStorage();
       SimpleStorageArray.push(SimpleStorage);

    }

    function sfStore(uint256 _SimpleStorageIndex, uint256 _SimpleStorageNumber) public{
        SimpleStorage(address(SimpleStorageArray[_SimpleStorageIndex])).store(_SimpleStorageIndex);
        
    }

    function sfGet(uint256 _SimpleStorageIndex) public view returns(uint256) {
      return  SimpleStorage(address(SimpleStorageArray[_SimpleStorageIndex])).retrieve();
       
       
    }


}