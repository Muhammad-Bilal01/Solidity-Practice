// SPDX-License-Identifier: MIT


pragma solidity 0.8.7;


contract LocalVariables{
    // local variables always declare inside the function and it will automatically kill when the function is clear.

function add(int a,int b)external  pure returns(int){

    int num1 = a;
    int num2 = b;

    return num1+num2;
}

}

