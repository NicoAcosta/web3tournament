//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./Tournament.sol";

contract Factory {
    address[] public tournaments;
    address public deployer;

    function createTournament(
        string memory _name,
        string memory _symbol,
        string memory _description,
        address _first,
        address _second,
        address _third
    ) public returns (address newTournamentAddress) {
        Tournament _newTournament = new Tournament(
            _name,
            _symbol,
            _description,
            msg.sender,
            _first,
            _second,
            _third
        );
        newTournamentAddress = address(_newTournament);
        tournaments.push(newTournamentAddress);
    }
}
