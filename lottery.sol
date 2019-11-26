pragma solidity 0.5.3;

contract Ballot{
    
    address payable[] public players;
    address public manager;
    
    constructor() public{
        manager = msg.sender;
    }
    
    function () payable external{
        require(msg.value >= 1 ether, "not enough ether");
        players.push(msg.sender);
    }
    
    function get_balance() view public returns(uint){
        require(msg.sender == manager);
        return address(this).balance;
    }
    
    modifier justManager(){
        require(msg.sender == manager, "you do not have right to see");
        _;
    }
    
    function random() private justManager view returns  (uint){
        
        uint source = block.difficulty + now;
        return uint(keccak256(abi.encodePacked(source)));
    }
    
    function winner() public justManager{
        uint r = random();
        uint index = r % players.length;
        address payable winner;
        winner = players[index];
        address(winner).transfer(address(this).balance);
    }
}
