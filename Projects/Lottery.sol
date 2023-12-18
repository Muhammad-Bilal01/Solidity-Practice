// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Lottery {
    address public manager;
    address payable[] public participants;

    constructor() {
        // manager : jo hamara contract ko first time deploy kre ga
        manager = msg.sender;
    }

    // hamara contract eths ko recieve kre ga.
    receive() external payable {
        require(msg.value == 1 ether, "Minimum of 1 eth is required"); // minimum 1 eth is required to become a participants of lottery
        // js k eths recieve ho jaye ge unko participants me add kr diya jaaye ga
        participants.push(payable(msg.sender));
    }

    function getBalance() public view returns (uint256) {
        require(msg.sender == manager, "only manager can access it"); // only manager can access the balance
        return address(this).balance; // contract me kitna balance he
    }

    function random() public view returns (uint256) {
        return
            uint256(
                keccak256(
                    abi.encodePacked(
                        block.difficulty,
                        block.timestamp,
                        participants.length
                    )
                )
            );
    }

    function selectWinner() public  {
        // only manager can select the winner
        require(msg.sender == manager, "only manager");
        require(
            participants.length >= 3,
            "Minimum of 3 participants is required"
        );

        uint256 r = random();
        uint256 index = r % participants.length;
        address payable winner = participants[index];

        // send balance to winner account
        winner.transfer(getBalance());
        participants = new address payable [](0); // to remove all the participants from the lottery

        
    }
}
