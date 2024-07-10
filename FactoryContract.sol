// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FactoryContract{

// Struct to store information about a friend 
    struct FriendInfo{
        string name;
        address friendAddress;
        uint age;
        string message;
        string date;
    }

    // Array to store all friends
    FriendInfo[] public friends;

    // Mapping to check if an address is already in the friend list
    mapping(address => bool) public inFriendList;

    constructor() { 
    }
    // Function to add a friend
    function addFriend(string memory _date,string memory _name,address _friendAddress, uint age, string memory _message) external{
       
        // Check if the friend address is not already in the list
        require(!inFriendList[_friendAddress],"Friend is already added");

        // Add the friend to the friends array
        friends.push(FriendInfo(_name,_friendAddress,age,_message,_date));

        // Mark the friend address as added in the mapping
        inFriendList[_friendAddress] = true;
        
    }

    // Function to get the number of friends
    function getFriends() external view returns(uint){
        return friends.length;
    }

    // Function to get all friends
    function getAllFriends() external view returns(FriendInfo[] memory){
        return friends;
    }
}
