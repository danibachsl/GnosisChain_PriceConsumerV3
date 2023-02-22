// This example code is designed to quickly deploy an example contract using Remix.

pragma solidity ^0.6.7;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {
    AggregatorV3Interface internal priceFeed;

    /**
     * Network: xDai
     * Aggregator: ETH/USD
     * Address: 0xa767f745331D267c7751297D982b050c93985627
     */
    constructor() public {
        priceFeed = AggregatorV3Interface(
            0xa767f745331D267c7751297D982b050c93985627
        );
    }

    /**
     * Returns the latest price
     */
    function getLatestPrice() public view returns (int) {
        (
            uint80 roundID,
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return price;
    }
}
