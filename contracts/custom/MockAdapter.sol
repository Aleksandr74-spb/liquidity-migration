//SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.2;

import "../adapters/AbstractAdapter.sol";

contract MockAdapter is AbstractAdapter {
    constructor(address owner_) AbstractAdapter(owner_) {}

    function outputTokens(address)
        public
        view
        override
        returns (address[] memory outputs)
    {
        return new address[](0);
    }

    function encodeMigration(address, address, address _lp, uint256)
        public
        override
        view
        onlyWhitelisted(_lp)
        returns (Call[] memory calls)
    {
        return new Call[](0);
    }

    function encodeWithdraw(address _lp, uint256)
        public
        override
        view
        onlyWhitelisted(_lp)
        returns (Call[] memory calls)
    {
        return new Call[](0);
    }
}
