Automated Transactions allow you to schedule and execute smart contract calls without manual intervention. Instead of waiting for a human or an off-chain bot, Kalp Functions automatically initiate transactions when defined conditions are met.
This ensures your dApp or protocol runs smoothly, reduces delays, and minimizes the risk of missed operations.

## Why Use Transactions?

- **Reliability:** Remove human error or dependency on external scripts. 
- **Efficiency:** Save time by executing repetitive or predictable contract calls. 
- **Security:** Execute transactions directly from Kalp’s trusted automation layer. 
- **Flexibility:** Combine with triggers (time, cron, on-chain events) for maximum customization. 

## Common Use Cases

1. Subscription Renewals 
- Auto-charge users every 30 days for premium access. 
- Trigger: Time Interval (30 days). 

2. DAO Proposal Execution 
- Automatically execute approved proposals (no need for manual calls). 
- Trigger: On-chain Event (Proposal Approved). 

3. Auto-Claim Rewards 
- Users don’t need to remember to claim; rewards are distributed automatically. 
- Trigger: Cron Expression (Every 24 hours). 

4. Treasury Payouts / Payroll 
- Stream salaries, vesting tokens, or community grants. 
- Trigger: Monthly or Weekly Interval. 

## How It Works

1. **Define the Transaction:** Select the target contract + function (e.g., renewSubscription()). 
2. **Choose a Trigger:** Time, Cron, Event, or Block. 
3. **Automate via Kalp UI:** Configure once, and Kalp handles execution. 

## Example Flow

- **Trigger:** Cron (every Friday at 6PM). 
- **Action:** Call airdropTokens(address[] recipients, uint256 amount). 
- **Result:** Community members automatically receive tokens weekly. 
