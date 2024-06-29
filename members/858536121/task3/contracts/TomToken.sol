// SPDX-License-Identifier:MIT
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
pragma solidity ^0.8.18;

contract TomToken is ERC20 {
    constructor() ERC20("TomToken", "TOMC") {
        _mint(msg.sender, 1000000000 * 10**6);
    }

    function decimals() public view virtual override returns (uint8) {
        return 6;
    }
}
