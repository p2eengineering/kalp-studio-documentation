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

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FeXfyTQW9K85TQxwXLIuu%252Fimage.png%3Falt%3Dmedia%26token%3Db1d77a2b-756a-4567-a6fe-003344250529&width=768&dpr=4&quality=100&sign=3a675c56&sv=1)


From there, open the ”contracts” folder, delete all the default files, and create a new one called ”Storage.sol”:

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FICHF8TfFeXqzSyzYXwri%252Fimage.png%3Falt%3Dmedia%26token%3Db7a8d1e9-3372-4675-80c5-7fcee4cb11cc&width=768&dpr=4&quality=100&sign=bb91cd7e&sv=1)

## Step 2: Write the Smart Contract Code in Solidity

For the second step, we’ll show you how to write the smart contract code in Solidity. As such, go ahead and open the ”Storage.sol” file and input the following code:

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
    


``` solidity
// SPDX-License-Identifier: MIT
```

The third line of the code declares which Solidity compiler you want to use. In this case, we’re using any version upper than ^0.8.20;

-   On the fifth line, we declare the contract, and in this case, we name it `_Storage_`. It’s common practice to use the same name for the file and contract:
    


``` solidity
contract Storage 
```

-   The sixth line declares an unsigned integer (uint) called `_data_`. This is the variable that will store the data you assign when executing the functions of the contract:
    



``` solidity
uint data;
```

-   On lines seven to nine, we declare the `_set()_` function. This function takes a uint variable as a parameter and assigns it to `_data_`. Furthermore, the keyword `_public_` ensures that anyone can call the `_set()_` function:
    



``` solidity
function set(uint x) public {data = x;}
```

-   In the last couple of lines, we add the `_get()_` function that returns the value of the `_data_` variable. The `_view_` keyword tells the Solidity compiler it’s a read-only function, and the `_returns (uint)_` part specifies that the function is to return a uint variable:
    



``` solidity
function get() public view returns (uint) {return data;}
```

That’s it; you now know how to write a smart contract in Solidity!

In the next step, we’ll show you how to set up MetaMask, which you’ll need to compile and deploy the contract in the tutorial’s final part!

## Step 3: Set Up MetaMask

Now that you’re done writing the code for your Solidity smart contract, the next thing you’ll need is a Web3 wallet. And for this tutorial, we’ll be using MetaMask. As such, if you haven’t already, head on over to “[_metamask.io_](http://metamask.io/)” and hit the ”Download” button at the bottom left:

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FiJp4sy1PRPgiQV0gDK5V%252Fimage.png%3Falt%3Dmedia%26token%3Ddc61508f-cedd-4fba-9cbc-22134142054a&width=768&dpr=4&quality=100&sign=f8aa0d28&sv=1)

Next, add MetaMask as a browser extension:

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FTKSg1uPNKkJZva0uhJhn%252Fimage.png%3Falt%3Dmedia%26token%3D96e1565d-769a-4d56-b25d-78b0baaf05b4&width=768&dpr=4&quality=100&sign=1aad3a1f&sv=1)

Once you add MetaMask to your browser, you’ll be taken to the following page, where you can either set up a new wallet or import an existing one:

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252F9WwTcf6L3cwEBVvJAmNP%252Fimage.png%3Falt%3Dmedia%26token%3D4e1802dc-251d-444b-bfed-84e675f00433&width=768&dpr=4&quality=100&sign=74d6588b&sv=1)

After you create a new or import a wallet, you should find yourself on a page looking something like this:

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FaFMlN5ROKS69Sml1COMQ%252Fimage.png%3Falt%3Dmedia%26token%3Df28f12b3-917f-4861-b146-3e830cbe9fbe&width=768&dpr=4&quality=100&sign=472b99b4&sv=1)

In addition to setting up a MetaMask account, you must add Ethereum’s Sepolia testnet to your wallet. The reason for doing this is that we don’t want to immediately commit to the Ethereum mainnet. Instead, you should deploy your smart contract to Sepolia so you can test it in a safe and secure environment.

To add and switch to the Sepolia testnet, go ahead and hit the networks drop-down menu at the top right of your MetaMask interface, click on the ”Show test networks” button, and select Sepolia:

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FF8GcrSrVXTSsId4kJjlP%252Fimage.png%3Falt%3Dmedia%26token%3Dee7685a2-3bfd-435a-98ad-e350eb18f3ab&width=768&dpr=4&quality=100&sign=23581fb7&sv=1)

Afterwards, it should now look something like this:

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FruWPWCWaLBa7231UXgVu%252Fimage.png%3Falt%3Dmedia%26token%3De1e72d27-df60-449a-9dd4-3684f3de0175&width=768&dpr=4&quality=100&sign=2bea56f7&sv=1)

## Step 4: Get Testnet Tokens

Deploying a smart contract to a blockchain requires a network transaction, meaning you must pay a gas fee. Consequently, in order to deploy your Solidity smart contract, you need to load up on some Sepolia ETH. Fortunately, since Sepolia is a testnet, you can leverage a faucet to get free tokens. And the easiest way to find a legit faucet is to visit the [Google Faucet](https://cloud.google.com/application/web3/faucet/ethereum/sepolia)

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252Ff913taX4YFurgkisqi1R%252Fimage.png%3Falt%3Dmedia%26token%3D9fb33304-6b2d-4707-a195-02a7a066ee78&width=768&dpr=4&quality=100&sign=4f96d747&sv=1)

Clicking this takes you to the following page where you need to input your MetaMask wallet address and click on "Receive 0.05 sepolia ETH"(It has max Testnet Tokens limit of 0.05 sepolia For 24 hr )

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FL6EyfDSxXdcH06ZBWmKu%252Fimage.png%3Falt%3Dmedia%26token%3D7072772f-2454-407c-a03c-1c8653a76a0d&width=768&dpr=4&quality=100&sign=18e7ec43&sv=1)

As soon as you claim them, the balance in your MetaMask wallet should update:

From here, you can now use these testnet tokens to pay for transactions on the Sepolia testnet. This means you’re now ready for the final step, where we’ll show you how to compile and deploy your Solidity smart contract!

## Step 5: Compile and Deploy the Solidity Smart Contract

#### Requirements

1.  **Solidity Version**: Your smart contract must use Solidity version 0.8.0 or greater.
    
2.  **Hardcoded Deploy Parameters**: All deploy parameters should be hardcoded in the contract. Kalp Studio does not support passing parameters during deployment.
    

#### Smart Contract Structure

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

#### Key Points

1.  Start with the SPDX license identifier.
    
2.  Specify the Solidity version (^0.8.0 or higher).
    
3.  Use a meaningful name for your contract.
    
4.  Declare state variables that will store your contract's data.
    
5.  Include a constructor that sets initial values. These values are hardcoded and cannot be changed during deployment in Kalp Studio.
    
6.  Implement functions to interact with your contract.
    

#### Example: Token Contract

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

#### Deployment Process

1.  Write your smart contract following the structure and requirements above.
    
2.  make sure that your contract is using a Solidity compiler that supports version 0.8.0 or higher.
    
3.  Review the contract details, ensuring all parameters are correct (remember, you can't change these during deployment).
    
4.  In Kalp Studio, navigate to the smart contract deployment section.

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FYLvSvRmE3amxtuBsOO0o%252Fimage.png%3Falt%3Dmedia%26token%3Df03e2328-e1d5-4e23-ad60-f898104047bb&width=768&dpr=4&quality=100&sign=a556870c&sv=1)

5. Add Smart Contract name and Description to deploy the smart contract. 

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FVYqjgncvTcM13Y7cJaWG%252Fimage.png%3Falt%3Dmedia%26token%3Dd9044870-aa51-432b-9ef5-fbe8c741be08&width=768&dpr=4&quality=100&sign=45541317&sv=1)

6. Drag & Drop your compiled contract code into the designated area.

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FlL5OQkvMQUAvWlkCbzdJ%252Fimage.png%3Falt%3Dmedia%26token%3D4e5c775f-5b4d-4631-b338-17f7174d0c6a&width=768&dpr=4&quality=100&sign=e71b44f9&sv=1)

7.  Click the "Continue" button to deploy your contract to the blockchain.
    
8.  Wait for the transaction to be confirmed on the blockchain.
    
9. Once confirmed, Kalp Studio will provide you with the deployed contract address and transaction details.

 ![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FF95khzb26sG7mpxd5XXv%252Fimage.png%3Falt%3Dmedia%26token%3D963da4a9-f786-4f55-b5ca-8e6740a29892&width=768&dpr=4&quality=100&sign=2c45c93e&sv=1)

Remember, all initial values and parameters must be set within the contract code itself, as Kalp Studio does not support passing parameters during deployment.

!!!Note  
    The smart contract will deploy to the network only which the wallet is connected to.


!!! Warning
    If you encounter any issues during development related to Kalp Studio, please raise a support ticket at [care.kalp.studio](mailto:care.kalp.studio). Our dedicated development team will assist you in finding the best possible solution.