// SPDX-License-Identifier: MIT

// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


contract StateVariables{

uint public stateNum; // state variable always declare outside the functions

// write // charge gas fee
function setValue(uint num) external {
    stateNum = num;
}

// read // no gas fee charge
function getValue()external view returns (uint){
    return stateNum;
}


}