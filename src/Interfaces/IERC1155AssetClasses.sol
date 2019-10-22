pragma solidity = 0.5.12;

interface IERC1155AssetClasses {

    /**
        @dev Tells whether a id is fungible class
        @param id The ID to query
        @return bool whether the given id is fungible class
     */
    function isFungible(uint256 id) external view returns(bool);

    /**
        @dev Tells whether a id is non-fungible class
        @param id The ID to query
        @return bool whether the given id is non-fungible class
     */
    function isNonFungibleClass(uint256 id) external view returns(bool);

    /**
        @dev Tells whether a id is non-fungible token
        @param id The ID to query
        @return bool whether the given id is non-fungible token
     */
    function isNonFungibleItem(uint256 id) external view returns(bool);
}