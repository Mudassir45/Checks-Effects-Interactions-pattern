pragma solidity ^0.5.11;

contract SecurityTutorial {

    mapping (address => uint256) public balances;


    function deposit() external payable  {
        balances[msg.sender] += msg.value;
    }

    function withdraw() external {
        require(balances[msg.sender] > 0);
        uint256 withdrawalAmount = balances[msg.sender];
        balances[msg.sender] = 0;
        msg.sender.transfer(withdrawalAmount);
    }

}