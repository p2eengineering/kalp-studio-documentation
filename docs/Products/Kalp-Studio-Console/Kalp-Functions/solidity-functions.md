Solidity Functions in Kalp are automation scripts written directly in Solidity that decide when and how a smart contract action should be executed.
They run natively on-chain, making them a reliable choice whenever you need trustless, transparent, and immutable automation.


<Note>
Solidity Functions can be combined with any of the available [Trigger Types](/Web3-Functions/Introduction/Trigger-types), enabling precise control over execution. 
</Note> 


## Why Solidity Functions Matter


- **On-chain Accuracy** - Conditions are verified entirely on-chain without relying on external sources.
- **Gas-Aware Execution** - Define execution limits and gas thresholds to optimize cost.
- **Immutable & Secure** - Once deployed, the logic cannot be altered, ensuring predictable automation.
- **Customizable Conditions** Encode logic such as thresholds, ownership checks, or state changes to unlock tailored automation flows.


## Example Use Cases


- **DeFi Automations** - Auto-liquidate undercollateralized positions in lending protocols.
- **NFT Management** - Trigger royalties distribution when NFTs are transferred or sold.
- **Treasury Operations** - Automate recurring transfers to community funds based on DAO votes.
- **Risk Control** - Halt trading or interactions if a specific state variable reaches a critical threshold.


## When to Choose Solidity Functions


Use Solidity Functions when:


- All conditions can be validated on-chain.
- You want predictability and security from immutable contracts.
- Gas optimization and strict execution rules are critical.
- Off-chain API calls or external data are not required (for that, see our upcoming Typescript Functions).
