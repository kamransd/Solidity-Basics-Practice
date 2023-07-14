pragma solidity ^0.8.20;
//Import Ownable contract
//Import Destroyable Contract
import "./Ownable.sol";
import "./Destroyable.sol";

//Explain interface in solidity
interface GovernmentInterface {
    function addTransaction(address _from, address _to, uint _amount) external;
}

contract Bank is Ownable, Destroyable {
    
    GovernmentInterface governmentInstance = GovernmentInterface(0xd9145CCE52D386f254917e481eB44e9943F39138);

    mapping(address => uint) balance; 
    //event explain 
    event balanceAdded(uint amount, address depositedTo);
    //Deposit Function in bank contract
    function deposit()public payable returns(uint){
        balance[msg.sender] += msg.value;
        emit balanceAdded(msg.value, msg.sender);
        return balance[msg.sender];
    } 
    // Withdraw Function In Bank Contract
    function withdraw(uint amount) public returns(uint){
        require(balance[msg.sender] >= amount);
        payable(msg.sender).transfer(amount);
        balance[msg.sender] -=amount;
        return balance[msg.sender];
    }
     function getBalance() public view returns(uint){
        return balance[msg.sender];
    } 
    //Total Balan=ce Of tHe contract function
    function totalBalance() public view returns(uint){
        return address(this).balance;
    }
    //get owner address function
    function getOwner() public view returns(address){
        return owner;
    }
    // transfer function Bank Contract
    function transfer(address  recipient, uint amount) public {
         //check balance of user before sending...
        require(balance[msg.sender] >= amount, "Balance not sufficient");
        require(msg.sender != recipient, "Don't transfer money to yourself");

        uint previousSenderBalance = balance[msg.sender];

        recipient.transfer(amount);

        governmentInstance.addTransaction(msg.sender, recipient, amount);
        
    }
}
