Kalp Studio provides a visual interface to configure and deploy Web3 Function tasks. This makes it easy for both developers and non-technical operators to create automation flows without writing additional code.

## Step 1: Create a New Project

- Go to [portal.kalp.studio](https://portal.kalp.studio/).
- Go To dashboard and select the Kalp Function to explore.
- Click **“+ Create New Project”** from the Kalp Function dashboard and further it will direct you to connect the wallet.
![Kalp Function Dashboard](https://github-production-user-asset-6210df.s3.amazonaws.com/60435499/482022592-2bae5c23-f35e-416a-9c97-ca83a1801544.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250829%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250829T061640Z&X-Amz-Expires=300&X-Amz-Signature=92c795319b14d33d107a8d26039719c331fed07dd997eb1c5393f4cf1be5a59b&X-Amz-SignedHeaders=host)
- After connecting the wallet, you will be directed to the new project page - This will create a project container where you can add one or multiple Web3 Functions.

## Step 2: Fill in Project Details

You’ll see the Create Project form:

![Project Details](https://github-production-user-asset-6210df.s3.amazonaws.com/60435499/482023861-5673e46b-b5a8-4ad6-bc00-037a60a8e99a.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250829%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250829T061710Z&X-Amz-Expires=300&X-Amz-Signature=bd1609452ad158543be031eb68dff3bece9f85f3e7cd872e1b2b469083d9a093&X-Amz-SignedHeaders=host)

- **Project Name:** A friendly name for your project (e.g., DAO Auto Executor).
- **Supported Network:** Select the blockchain network (currently: Ethereum Sepolia, more to be added soon).
- **Funding Wallet Address:** Enter the address that will cover gas fees for automated transactions.
- **Wallet Funding Description:** Optional notes to describe the wallet’s role (e.g., Treasury Wallet).
- **Runtime Selection:** Choose the runtime for your functions (currently: Node.js; Deno support coming soon).


Once you’ve created a project, the next step is to configure a function. This defines when the function should run and what it should trigger.

## Step 3: Create/Configure Function-

Within your project, click on **“+ Create New Function”** and choose:

- **Trigger Type:** Time Interval, Cron, On-Chain Event, or Every Block.
- **Who to Trigger:** Solidity Function, Transaction, or Webhook.
- **Contract Details:** Enter the target contract address, ABI, and function parameters.

For the detailed description, please follow the introduction part.

![Configuring Function](https://github-production-user-asset-6210df.s3.amazonaws.com/60435499/482027668-f3af1651-0159-4f2a-bfb3-1e1adec7c97a.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250829%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250829T061758Z&X-Amz-Expires=300&X-Amz-Signature=470b9c13f67f807ed4f21a374dd9422dad2ceae9bc65ff12cacd0a5915f1cf80&X-Amz-SignedHeaders=host)

## Step 4: Set Contract Details

- **Network:** Choose the blockchain network (e.g., Ethereum Sepolia).
- **Contract Address:** Enter the address of the smart contract you want to connect with.
- **ABI:** You can paste a custom ABI or fetch if the contract is verified.

Example: Configure function to listen for the EmployeeAdded(address employee, uint256 salary) event.

![contract Details](https://github-production-user-asset-6210df.s3.amazonaws.com/60435499/482029158-6584f691-9cfb-405b-b7e4-e6f6115fc506.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAVCODYLSA53PQK4ZA%2F20250829%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250829T061815Z&X-Amz-Expires=300&X-Amz-Signature=326ef4c25222c1036886562663e146180db21c3c1641157d0b23cd7d75ff8510&X-Amz-SignedHeaders=host)


## Step 5: Select “Who to Trigger”

Decide what should happen when the trigger condition is met:

- **Solidity Function:** Call a specific function in your smart contract.
- **Automated Transaction:** Execute a pre-defined transaction.
- **Webhook:** Notify an external system (Slack, Email, custom API).
- (Coming Soon) Typescript Function for off-chain logic.


## Step 6: Task Properties
- **Task Name:** Friendly name for your function (e.g., Welcome Function).
- Optional: Configure advanced execution options (single run vs recurring).

Click **Create Function** to save. Your task will now appear under the project dashboard, where you can monitor executions, logs, and success/failure states.
