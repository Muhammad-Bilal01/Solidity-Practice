// SPDX-License-Identifier: MIT

// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;


contract ImmutableVariable{

// contant vs immutable
// constant ko hm declaration k sath hi initialized kre gwei
// immutable is like final - k hm usko deployment se pehle initialized kr de declaration k sath krna lazmi nhi he


uint public constant num = 10; 
address public immutable imm_owner; 

constructor(address owner) {
    imm_owner = owner;
}


}