pragma solidity ^0.5.0;

interface IERC1155AssetClasses {
    function isFungible(uint256 id) external view returns(bool);
    function isNonFungibleClass(uint256 id) external view returns(bool);
    function isNonFungibleItem(uint256 id) external view returns(bool);
}