pragma solidity ^0.6.0;

import "./ERC20Basic.sol";

/**
 * @title ERC20 interface
 * @dev see https://eips.ethereum.org/EIPS/eip-20
 */
interface ERC20 is ERC20Basic {
    function transferFrom(address from, address to, uint256 value)
        external
        returns (bool);
    function approve(address spender, uint256 value) external returns (bool);
    function allowance(address owner, address spender)
        external
        view
        returns (uint256);
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
}
