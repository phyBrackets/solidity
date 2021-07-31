//SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

contract FixedSizeArray{
    
    bytes1 public b1;
    bytes2 public b2;
    bytes3 public b3; // these are the arrays of types bytes 
    //... upto bytes 32
    
    uint[3] public numbers = [2,3,4]; //  by deafult array have value 0 
    
    function setElement(uint index, uint value) public {
        numbers[index]=value;
    }
    
    function getLength() public view returns(uint){
        return numbers.length;
    }
    
    function setBytesArray() public{
        b1 = 'a'; // => 0x61 (ASCII code of `a` in hex)
        b2 = 'ab'; // => 0x6162
          b3 = 'z'; // => 0x7A
          // b3[0] = 'a'; // ERROR => can not change individual bytes
    }
}
