//SPDX-License-Identifier: GPL-3.0
 
pragma solidity >=0.5.0 <0.9.0;

contract A{
    string[] public cities = ['Delhi','Mumbai'];
    
    // this function doesn't modify the vALUE
    function f_memory() public {
        string[] memory s1 = cities;
       // string s1; // this gives error
       
       s1[0] = 'Kolkata';
    }
    
    function f_storage() public {
        string[] storage s1 = cities;
       // string s1; // this gives error
       
       s1[0] = 'Kolkata';
    }
}
