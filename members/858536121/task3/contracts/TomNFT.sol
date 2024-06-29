// SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract TomNFT is ERC721 {
    uint256 private _tokenIDCounter;

    constructor() ERC721("TomNFT", "TNFT") {
        _tokenIDCounter = 1;
    }

    function mint(address to) public {
        uint256 tokenID = _tokenIDCounter++;
        _safeMint(to, tokenID);
    }
}
