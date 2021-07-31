//SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0; 

contract DynamicArrays{
    
    uint[] public numbers;
    
    function getLength() public view returns(uint){
        return numbers.length;
    }
    
    function addElement(uint item) public{
        numbers.push(item);
    }
    
    function getElement(uint i) public view returns(uint){
        if(i<numbers.length){
            return numbers[i];
        }
        return 0;
    }
    
    function popelement() public{
        numbers.pop();
    }
    
    
    function f() public {
        // declaring a memory dynamic array
// it's not possible to resize memory arrays (push() and pop() are not available).
        uint[] memory y = new uint[](3);  // memory array 
        y[0]=1;
        y[1]=20;
        y[2]=10;
        numbers = y;
    }
}
