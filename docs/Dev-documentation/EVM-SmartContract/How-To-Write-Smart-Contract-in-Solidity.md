<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# How To Write Smart Contract in Solidity

## 5-Step Tutorial: How to Write a Smart Contract in Solidity

In the following sections, we’ll show you how to write a smart contract in Solidity in five straightforward steps:

-   Step 1: Set Up Remix
    
-   Step 2: Write the Smart Contract Code in Solidity
    
-   Step 3: Set Up MetaMask
    
-   Step 4: Get Testnet Tokens
    
-   Step 5: Compile and Deploy the Solidity Smart Contract
    

The Solidity smart contract you’ll write is really straightforward, allowing you to store and retrieve an unsigned integer. Consequently, this tutorial is intended for developers with little to no experience in Ethereum development.

## **Step 1: Set Up Remix**

You have many options for writing a smart contract in Solidity. However, to make this tutorial as beginner-friendly as possible, we’ll use Remix. Remix is a web-based integrated development environment (IDE) for developing EVM-compatible smart contracts.

It’s straightforward and supports several features you need for this tutorial, including the ability to compile and deploy Solidity smart contracts at the click of a few buttons. As such, let’s kick things off by visiting the [Remix website](https://remix.ethereum.org/).

Clicking on the link above takes you to the following page, where you’ll find a workspace called ”default_workspace”:

![](https://prabalparihar95.gitbook.io/~gitbook/image?url=https%3A%2F%2F636979743-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FrCdFVkYyOmhTqhPOYEsY%252Fuploads%252FuySEEHCKh7yxshO18V7U%252Fimage.png%3Falt%3Dmedia%26token%3D4ab84270-20f0-4605-a297-b48137652d9b&width=768&dpr=4&quality=100&sign=e9cc6445&sv=1)

From there, open the ”contracts” folder, delete all the default files, and create a new one called ”Storage.sol”:

![](https://prabalparihar95.gitbook.io/~gitbook/image?url=https%3A%2F%2F636979743-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FrCdFVkYyOmhTqhPOYEsY%252Fuploads%252F89yZueTNy2YAiBy2fce7%252Fimage.png%3Falt%3Dmedia%26token%3Deb2da1a5-f094-4544-8f1b-c85cde5589ce&width=768&dpr=4&quality=100&sign=ef3eb5c9&sv=1)

## Step 2: Write the Smart Contract Code in Solidity

For the second step, we’ll show you how to write the smart contract code in Solidity. As such, solidity ahead and open the ”Storage.sol” file and input the following code:



``` solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Storage {
    uint data;
    function set(uint x) public {
        data = x;
    }
    function get() public view returns (uint) {
        return data;
    }
} 
```

The code above is the complete contract, and we’ll now break down each row, starting from the top!

-   On the initial line, we specify the SPDX license type. Whenever the source code of a contract is made publicly available, these licenses can help avoid and resolve copyright issues:
    


```solidity
// SPDX-License-Identifier: MIT
```

The third line of the code declares which Solidity compiler you want to use. In this case, we’re using any version upper than ^0.8.20;

-   On the fifth line, we declare the contract, and in this case, we name it `_Storage_`. It’s common practice to use the same name for the file and contract:
    



```solidity
contract Storage 
```

-   The sixth line declares an unsigned integer (uint) called `_data_`. This is the variable that will store the data you assign when executing the functions of the contract:
    



```solidity
uint data;
```

-   On lines seven to nine, we declare the `_set()_` function. This function takes a uint variable as a parameter and assigns it to `_data_`. Furthermore, the keyword `_public_` ensures that anyone can call the `_set()_` function:
    



```solidity
function set(uint x) public {data = x;}
```

-   In the last couple of lines, we add the `_get()_` function that returns the value of the `_data_` variable. The `_view_` keyword tells the Solidity compiler it’s a read-only function, and the `_returns (uint)_` part specifies that the function is to return a uint variable:
    



```solidity
function get() public view returns (uint) {return data;}
```

That’s it; you now know how to write a smart contract in Solidity!

In the next step, we’ll show you how to set up MetaMask, which you’ll need to compile and deploy the contract in the tutorial’s final part!

## Step 3: Set Up MetaMask

Now that you’re done writing the code for your Solidity smart contract, the next thing you’ll need is a Web3 wallet. And for this tutorial, we’ll be using MetaMask. As such, if you haven’t already, head on over to “[_metamask.io_](http://metamask.io/)” and hit the ”Download” button at the bottom left:

![](https://prabalparihar95.gitbook.io/~gitbook/image?url=https%3A%2F%2F636979743-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FrCdFVkYyOmhTqhPOYEsY%252Fuploads%252Faumj2OFNckyKIipGWy3i%252Fimage.png%3Falt%3Dmedia%26token%3D186bfd2b-9d65-408a-abb0-dedc11b9a570&width=768&dpr=4&quality=100&sign=c9aea0fe&sv=1)

## Next, add MetaMask as a browser extension:

![](https://prabalparihar95.gitbook.io/~gitbook/image?url=https%3A%2F%2F636979743-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FrCdFVkYyOmhTqhPOYEsY%252Fuploads%252FiYv6CaAJdgkpo5MVtrYx%252Fimage.png%3Falt%3Dmedia%26token%3Dfbf20622-60f6-477b-9b10-913612f59012&width=768&dpr=4&quality=100&sign=4ec89c50&sv=1)

Once you add MetaMask to your browser, you’ll be taken to the following page, where you can either set up a new wallet or import an existing one:

![](https://prabalparihar95.gitbook.io/~gitbook/image?url=https%3A%2F%2F636979743-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FrCdFVkYyOmhTqhPOYEsY%252Fuploads%252FqhpaPx2cqui94oGKiGxo%252Fimage.png%3Falt%3Dmedia%26token%3D1724ac19-c830-40a2-8674-6468fe63da23&width=768&dpr=4&quality=100&sign=12920045&sv=1)

After you create a new or import a wallet, you should find yourself on a page looking something like this:

![](https://prabalparihar95.gitbook.io/~gitbook/image?url=https%3A%2F%2F636979743-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FrCdFVkYyOmhTqhPOYEsY%252Fuploads%252FBbDSRldLA3jvrWIthq5K%252Fimage.png%3Falt%3Dmedia%26token%3Df50803b6-f794-45a1-8728-967a0cefbcc2&width=768&dpr=4&quality=100&sign=93a95b81&sv=1)

In addition to setting up a MetaMask account, you must add Ethereum’s Sepolia testnet to your wallet. The reason for doing this is that we don’t want to immediately commit to the Ethereum mainnet. Instead, you should deploy your smart contract to Sepolia so you can test it in a safe and secure environment.

To add and switch to the Sepolia testnet, solidity ahead and hit the networks drop-down menu at the top right of your MetaMask interface, click on the ”Show test networks” button, and select Sepolia:

![](https://prabalparihar95.gitbook.io/~gitbook/image?url=https%3A%2F%2F636979743-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FrCdFVkYyOmhTqhPOYEsY%252Fuploads%252F7aUOmnG2Nvs6tyb37gDx%252Fimage.png%3Falt%3Dmedia%26token%3D24038cd6-10bb-4a6e-8667-2636aaa021f6&width=768&dpr=4&quality=100&sign=fc01c096&sv=1)

Afterwards, it should now look something like this:

![](https://prabalparihar95.gitbook.io/~gitbook/image?url=https%3A%2F%2F636979743-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FrCdFVkYyOmhTqhPOYEsY%252Fuploads%252Fi9Lg0mbWpNrg3zkkhVC2%252Fimage.png%3Falt%3Dmedia%26token%3D5f13ce6c-f6d7-4cbb-a5af-f99b0456c13f&width=768&dpr=4&quality=100&sign=aeb586d1&sv=1)

## Step 4: Get Testnet Tokens

Deploying a smart contract to a blockchain requires a network transaction, meaning you must pay a gas fee. Consequently, in order to deploy your Solidity smart contract, you need to load up on some Sepolia ETH. Fortunately, since Sepolia is a testnet, you can leverage a faucet to get free tokens. And the easiest way to find a legit faucet is to visit the [solidityogle Faucet](https://cloud.solidityogle.com/application/web3/faucet/ethereum/sepolia)

![](https://prabalparihar95.gitbook.io/~gitbook/image?url=https%3A%2F%2F636979743-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FrCdFVkYyOmhTqhPOYEsY%252Fuploads%252F7BuGxn5WRDUhxZoxM7fB%252FScreenshot%25202024-09-03%2520at%25208.31.06%25E2%2580%25AFAM.png%3Falt%3Dmedia%26token%3D82c4bb94-7d27-4fec-a03f-7777333fe4d5&width=768&dpr=4&quality=100&sign=a7cbead6&sv=1)

Clicking this takes you to the following page where you need to input your MetaMask wallet address and click on "Receive 0.05 sepolia ETH"(It has max Testnet Tokens limit of 0.05 sepolia For 24 hr )

![](https://prabalparihar95.gitbook.io/~gitbook/image?url=https%3A%2F%2F636979743-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FrCdFVkYyOmhTqhPOYEsY%252Fuploads%252Fcrh1xX4B2n8IIkvjUzJB%252Fimage.png%3Falt%3Dmedia%26token%3Dcee08044-2316-48af-a27a-8b396729b658&width=768&dpr=4&quality=100&sign=f428ba0e&sv=1)

As soon as you claim them, the balance in your MetaMask wallet should update:

From here, you can now use these testnet tokens to pay for transactions on the Sepolia testnet. This means you’re now ready for the final step, where we’ll show you how to compile and deploy your Solidity smart contract!

## Step 5: Compile and Deploy the Solidity Smart Contract

## Requirements

1.  **Solidity Version**: Your smart contract must use Solidity version 0.8.0 or greater.
    
2.  **Hardcoded Deploy Parameters**: All deploy parameters should be hardcoded in the contract. Kalp Studio does not support passing parameters during deployment.
    

## Smart Contract Structure


Your smart contract should follow this general structure:

``` solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract YourContractName {
    // State variables
    uint256 public someValue;
    address public owner;
// Events (if needed)
event ValueChanged(uint256 newValue);

// Constructor with hardcoded values
constructor() {
    someValue = 100;  // Hardcoded initial value
    owner = msg.sender;
}

// Functions
function setValue(uint256 _newValue) public {
    require(msg.sender == owner, "Only owner can set value");
    someValue = _newValue;
    emit ValueChanged(_newValue);
}

// Other functions...
}
``` 

## Key Points

1.  Start with the SPDX license identifier.
    
2.  Specify the Solidity version (^0.8.0 or higher).
    
3.  Use a meaningful name for your contract.
    
4.  Declare state variables that will store your contract's data.
    
5.  Include a constructor that sets initial values. These values are hardcoded and cannot be changed during deployment in Kalp Studio.
    
6.  Implement functions to interact with your contract.
    

## Example: Token Contract

Here's an example of a simple token contract that would be compatible with Kalp Studio:


``` solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleToken {
    string public name;
    string public symbol;
    uint8 public decimals;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;
event Transfer(address indexed from, address indexed to, uint256 value);

constructor() {
    name = "SimpleToken";
    symbol = "SMPL";
    decimals = 18;
    totalSupply = 1000000 * 10**uint256(decimals);
    balanceOf[msg.sender] = totalSupply;
}

function transfer(address _to, uint256 _value) public returns (bool success) {
    require(balanceOf[msg.sender] >= _value, "Insufficient balance");
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;
    emit Transfer(msg.sender, _to, _value);
    return true;
}
}

```

## Deployment Process

1.  Write your smart contract following the structure and requirements above.
    
2.  make sure that your contract is using a Solidity compiler that supports version 0.8.0 or higher.
    
3.  Review the contract details, ensuring all parameters are correct (remember, you can't change these during deployment).
    
4.  In Kalp Studio, navigate to the smart contract deployment section.

![](https://kalpstudio.gitbook.io/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252Fxx75xipVgTS4EHsHINlR%252Fimage.png%3Falt%3Dmedia%26token%3D843628e4-bf66-4b27-9c9c-30beaada6599&width=768&dpr=4&quality=100&sign=eac11d7b&sv=1)


5.  Add Smart Contract name and Description to deploy the smart contract

![](https://kalpstudio.gitbook.io/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FXyRbSlJU1jQL5Z5GSCyc%252Fimage.png%3Falt%3Dmedia%26token%3Dccee828b-a756-4fa7-ac37-f481fd6b58cd&width=768&dpr=4&quality=100&sign=3a52709e&sv=1)

6.  Drag & Drop your compiled contract code into the designated area.

![](https://kalpstudio.gitbook.io/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FFmgdepYi2JcjS0nfsYq5%252Fimage.png%3Falt%3Dmedia%26token%3D015f18f5-53d4-4b37-a3a9-5496d6bd78c3&width=768&dpr=4&quality=100&sign=78a3832&sv=1)

7.  Click the "Continue" button to deploy your contract to the blockchain.
    
8.  Wait for the transaction to be confirmed on the blockchain.
    
9.  Once confirmed, Kalp Studio will provide you with the deployed contract address and transaction details.
 ![](https://kalpstudio.gitbook.io/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FUSFpLHj6i8Gzx3eZVxjn%252Fimage.png%3Falt%3Dmedia%26token%3D312a1ebe-46ea-4beb-85d7-292ba4b57af1&width=768&dpr=4&quality=100&sign=fe95dee1&sv=1)

Remember, all initial values and parameters must be set within the contract code itself, as Kalp Studio does not support passing parameters during deployment.

!!! Note 
    The smart contract will deploy to the network only which the wallet is connected to.

!!! Note
    If you encounter any issues during development related to Kalp Studio, please raise a support ticket at [care.kalp.studio](mailto:care.kalp.studio). Our dedicated development team will assist you in finding the best possible solution.