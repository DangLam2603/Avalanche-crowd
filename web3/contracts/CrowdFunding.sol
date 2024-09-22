// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GameLicenseManager {
    struct Game {
        string gameName;
        string ipfsHash; // Reference to off-chain file
        string licenseKey; // License Key
        address buyer;
    }

    mapping(uint256 => Game) public games;
    uint256 public gameCounter;
    address public owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function registerGame(
        string memory _gameName,
        string memory _ipfsHash,
        string memory _licenseKey,
        address _buyer
    ) public onlyOwner {
        gameCounter++;
        games[gameCounter] = Game(_gameName, _ipfsHash, _licenseKey, _buyer);
    }

    function getGame(
        uint256 _gameId
    ) public view returns (string memory, string memory) {
        Game memory game = games[_gameId];
        require(
            msg.sender == game.buyer,
            "Only the buyer can access this game"
        );
        return (game.ipfsHash, game.licenseKey);
    }
}
