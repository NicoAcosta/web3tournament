//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Tournament is ERC721 {
    string public description;
    address public deployer;

    constructor(
        string memory _name,
        string memory _description,
        string memory _symbol,
        address _deployer,
        address _first,
        address _second,
        address _third
    ) ERC721(_name, _symbol) {
        description = _description;
        deployer = _deployer;

        _mint(_first, 1);
        _mint(_second, 2);
        _mint(_third, 3);
    }

    function first() public view returns (address) {
        return ownerOf(1);
    }

    function second() public view returns (address) {
        return ownerOf(2);
    }

    function third() public view returns (address) {
        return ownerOf(3);
    }
}
