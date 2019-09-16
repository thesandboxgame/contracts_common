pragma solidity ^0.5.2;

contract ProxyImplementation {
    mapping(string => bool) _initialised;

    modifier phase(string memory phase) {
        if (!_initialised[phase]) {
            _initialised[phase] = true;
            _;
        }
    }
}
