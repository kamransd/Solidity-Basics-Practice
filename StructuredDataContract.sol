pragma solidity 0.8.0;

contract StructuredData {
    struct UserData {
        uint age;
        string location;
    }
    mapping(address => UserData) public userMapping;

    function updateUserData(uint age, string memory location) public {
        userMapping[msg.sender] =UserData({
          age: age,
          location: location
        }); 
    }
}
