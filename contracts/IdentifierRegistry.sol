// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract IdentifierRegistry {
    struct User {
        string identifier;
        string achievements;
        address owner;
    }

    mapping(address => User) private users;

    function register(string memory _identifier, string memory _achievements) public {
        users[msg.sender] = User(_identifier, _achievements, msg.sender);
    }

    function getUser() public view returns (string memory, string memory) {
        User memory user = users[msg.sender];
        return (user.identifier, user.achievements);
    }
}
