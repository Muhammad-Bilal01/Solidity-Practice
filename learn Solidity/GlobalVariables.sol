// SPDX-License-Identifier: MIT

// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract GlobalVariables{


function world() external view returns (address,uint,uint){
    address sender = msg.sender;
    uint blockNum = block.number;
    uint blockDiff = block.difficulty;

    return (sender,blockNum,blockDiff);
}


}