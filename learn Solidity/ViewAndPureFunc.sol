// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract ViewAndPure{

    // view Function: only for read state Variable
    // pure Function: not read and nor write state variables
    // transaction Function: to write state variables [don't need to mention]


    uint public x = 5;

function ViewFunc(uint num) public view returns(uint) {
    // x is just readed
    return  num + x; 
}

function PureFunc(uint a,uint b)public pure returns(uint){
    return a+b;
}


function transFunc(uint num) public returns(uint) {
    x = num;
    return x;
}


}