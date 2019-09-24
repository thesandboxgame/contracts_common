pragma solidity >= 0.5.2;

import "contracts/contracts_common/src/BaseWithStorage/Ownable.sol";

/**
 * @title ReferrableSale
 * @dev Implements the base elements for a sales referral system.
 * It is supposed to be inherited by a sales contract.
 * The referrals are expressed in percentage * 100, for example 1000 represents 10% and 555 represents 5.55%.
 */
contract ReferrableSale is Ownable {

    event DefaultReferralSet(
        uint256 percentage
    );

    event CustomReferralSet(
        address indexed referrer,
        uint256 percentage
    );

    uint256 public defaultReferral = 0;
    mapping (address => uint256) public customReferrals;

    function setDefaultReferral(uint256 _defaultReferral) public onlyOwner {
        require(_defaultReferral < 10000, "Referral must be less than 100 percent");
        require(_defaultReferral != defaultReferral, "New referral must be different from the previous");
        defaultReferral = _defaultReferral;
        emit DefaultReferralSet(_defaultReferral);
    }

    function setCustomReferral(address _referrer, uint256 _customReferral) public onlyOwner {
        require(_customReferral < 10000, "Referral must be less than 100 percent");
        require(_customReferral != customReferrals[_referrer], "New referral must be different from the previous");
        customReferrals[_referrer] = _customReferral;
        emit CustomReferralSet(_referrer, _customReferral);
    }
}
