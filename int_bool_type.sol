//SPDX-License-Identifier: GPL-3.0 

//pragma solidity >=0.5.0 <0.9.0;

pragma solidity ^0.8.0;

contract Property{
    // 1. Boolean type 
    bool public sold; // by deafult false 
    
    //2. Integer type
    // uint8 public x=256; // 255 is max of uint8 , so this line gives error of overflow 
    uint8 public x=255;
     int8 public y=-10;
     
     function f1() public {
         x+=1; // this gives x=0 after the addition done because we are trying to goes out the bound 
     }
}
