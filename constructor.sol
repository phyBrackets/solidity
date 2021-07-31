//SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.5.0 <0.9.0;

contract Property{
    int public price ;
    string public Location = "INDIA";
    address public owner;
    int constant area = 100 ; // always constant variable should intialise at compile time otherwise gives error
    
    address immutable public owner; // no one change the owner after the deployment 
    constructor(int _price, string memory _Location){
        price=_price;
        Location = _Location;
        owner = msg.sender; // address of the account msg.sender is built in which gives the address of the account
    }
    
    function setPrice(int _price) public{
        price = _price;
    }
    
    
    function setLocation(string memory  _Location) public{
        Location = _Location ;
    }
}
