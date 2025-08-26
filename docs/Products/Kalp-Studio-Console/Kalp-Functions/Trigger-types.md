## Trigger Types (Kalp Web3 Functions)


Kalp Web3 Functions provide multiple ways to decide when and how your automation should run.
Depending on your use case, you can pick from simple time-based triggers, blockchain-aware events, or external webhooks.

## 1. Time Interval

Use this trigger to execute tasks at fixed intervals 
- for example, every 10 minutes or once every 24 hours.
Think of it as a recurring alarm clock for your smart contract or automated transaction.

📌 screenshot: Kalp Studio dashboard with a simple “Every 30 mins” interval setup.


## 2. Cron Expressions

For more advanced scheduling, you can use [cron](https://en.wikipedia.org/wiki/Cron) expressions.
This allows fine-grained control like:

- “Every Tuesday at 3 PM” 
- “On the 1st of every month at midnight” 

It’s ideal for precise task scheduling.

![cron job](https://github.com/user-attachments/assets/a98f147c-6427-42ae-b3ad-185219d6e122)

## 3. On-Chain Event

Perfect when your automation should react directly to blockchain activity.

### Example: ERC20 Token Transfer Event

Let’s say you want to trigger an action whenever a user transfers tokens. Most ERC20 tokens emit a Transfer event whenever tokens move between addresses:

```
// Standard ERC20 Transfer event
event Transfer(address indexed from, address indexed to, uint256 value);
```

Whenever this event occurs, Kalp Web3 Functions can execute the linked action automatically.

![on-chain event](https://github.com/user-attachments/assets/264ff609-3b9a-4c64-8477-effb9d52ddaa)

## 4. Every Block

This trigger runs in sync with the blockchain itself, firing each time a new block is produced.
It’s best used for tasks that need to react in real-time to state changes or block-based updates.

![every block event](https://github.com/user-attachments/assets/e45ec3c6-dee7-4cc1-978e-f5df856e9d10)

5. Webhook Trigger (Kalp Studio Exclusive)


Unlike many other automation platforms, Kalp Functions natively support Webhook triggers.
This means your Web3 Function can start when an off-chain API, app, or service sends a request to Kalp.

**Example use cases:**

- Alerting via Slack or Email when balances fall below a threshold. 
- Triggering payouts after a successful off-chain payment. 
- Running an oracle update when external data changes. 

![webhook trigger](https://github.com/user-attachments/assets/e45ec3c6-dee7-4cc1-978e-f5df856e9d10)


**Note**

Whichever trigger you choose, you can connect it to run any of the following actions in Kalp Web3 Functions:

- Solidity Function 
- Automated Transactions 
- Webhook Execution 

*Coming Soon: Typescript Functions — for scenarios requiring off-chain data fetches, APIs, and advanced computations.*
