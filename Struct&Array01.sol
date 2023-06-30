pragma solidity ^0.8.0;

contract Team {

    Player[] public Players;

    struct Player {

        string firstname;
        string lastname;
        uint age;

    }
    function addPlayer(string memory _firstname, string memory _lastname, uint _age ) public {
        Players.push(Player(_firstname, _lastname, _age));
    }
}
