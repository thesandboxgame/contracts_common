pragma solidity ^0.5.0;

interface IERC1155AssetCollection {

    /**
        @dev Tells the collection info of a given id
        @param id The ID to query
        @return bool whether the given id is fungible
        @return uint256 parent collectionId of the given id
     */
    function collection(uint256 id) external view returns(bool ifFungible, uint256 collectionId);
}