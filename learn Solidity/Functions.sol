// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Functions{

    uint public x = 12;

function singleValue(uint num) public view returns(uint)
{

    return num + x;
}

function useSingleValue() public view returns (uint){
    uint y = singleValue(8);
    return y;
}

function MultipleValue() public pure returns(uint,int,bool){

uint v = 13;
int t = 34;
bool isOk = true;

return (v,t,isOk); // order must be same

}

// 2nd method
function MultipleValueDec() public pure returns(uint v,int t,bool r){

v = 12;
t = 34;
r = true;

}


function destructuring() public pure returns(uint){
    (uint a,uint b,uint c) = (34,56,7);

    return a+b+c;
} 

function useMultiValue() public pure returns (uint,bool,int){
    (uint a, int b,bool c) = MultipleValue();

    return (a,c,b); 
}


}