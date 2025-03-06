<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# Kush Library Documentation

## Overview:

-   The KUSH-Go Library is an open-source Go-based implementation of token standards such as ERC20, ERC721, and ERC1155, designed to work seamlessly with the Kalp SDK on the Kalp Blockchain.
-   It is inspired by the popular OpenZeppelin contracts used in the Ethereum ecosystem, offering familiar functionality and security standards, but in a Go environment, specifically tailored for the Kalp Chain.
-   The library is ideal for developers who want to build secure and modular smart contracts for decentralized applications (dApps) on the Kalp Chain.
-   It provides reusable components for token creation, management, and transfer, supporting various use cases like fungible tokens (ERC20), non-fungible tokens (ERC721), and multi-token standards (ERC1155). By leveraging the Kalp SDK, the library ensures seamless interaction with the Kalp Blockchain for transaction execution and storage.

## Key Features of KUSH-Go Library:

  
**Go-based Token Standard Implementations**: 
-   The KUSH-Go Library implements token standards like ERC20, ERC721, and ERC1155 using Go, providing a robust and high-performance solution for building smart contracts on the Kalp Blockchain.

**ERC20 – Fungible Token Support**:
   -   Create and manage fungible tokens (tokens where all units are identical, like cryptocurrencies). Includes functionalities like transferring tokens, querying balances, and minting new tokens.
   -   Key Functions: `Transfer()`, `BalanceOf()`, `Mint()`, and `Approve()`.

**ERC721 – Non-Fungible Token (NFT) Support**:
 -   Build and manage non-fungible tokens (NFTs), allowing unique assets like digital art, collectibles, and game items to be tokenized on the Kalp Blockchain.
 -   Key Functions: `MintTokenWithUri()`, `TransferFrom()`, `OwnerOf()`.

**ERC1155 – Multi-Token Standard**:
-   Manage multiple types of tokens (both fungible and non-fungible) within a single smart contract. Perfect for applications where multiple asset types are needed, like gaming platforms or collectibles.
-   Key Functions: `Mint()`,`MintBatch()`,`Transfer() ,TransferBatch()`.

**Seamless Kalp SDK Integration**:
 -   The library integrates with the Kalp SDK, ensuring easy interaction with the Kalp Blockchain. Developers can create and manage tokens that are stored and executed securely on the Kalp Chain, without needing to worry about low-level blockchain interactions.

**Modular and Reusable Components**:
   -   KUSH-Go is designed to be modular, allowing developers to easily plug in and extend functionality according to their needs. The token standards and utilities are built as reusable components for easier contract management and scalability.

**Familiar OpenZeppelin-like Structure**:
   -   The library mirrors the functionality and structure of OpenZeppelin contracts, making it easier for developers familiar with Ethereum and Solidity to quickly adapt to the Kalp Chain environment using Go.

**Security Features**:
   -   Includes built-in security features like AccessControl for role-based permissions and Pausable contracts to allow administrators to halt contract activity in case of emergencies or vulnerabilities.

**Ideal for Decentralized Applications (dApps)**:

-   Whether you’re building DeFi platforms, gaming applications, or tokenized marketplaces, KUSH-Go provides the foundational building blocks to create smart contracts for decentralized applications.

## Prerequisites:

Before you start, ensure you have the following installed:

-   Go (maximum version is 1.20)
-   Kalp SDK: Required for interacting with the Kalp Blockchain.

  

## Installation and SetUp:

### To install the KUSH library, use the following command:

  

```Go
go get github.com/thekalpstudio/kush-go/contracts/token  
```

  

After installation, you can import the library into your Go project:

```Go

import "github.com/thekalpstudio/kush-go/contracts/token"

```

### To install the Kalp SDK, use the following command:

```Go
go get -u github.com/p2eengineering/kalp-sdk-public/kalpsdk


```

## Project Structure

The project is structured to mirror the OpenZeppelin contract functionality, with modules for ERC20, ERC721, and ERC1155-like token standards, adapted for Kalp Chain.

-   /erc20: Contains the Go-based implementation of ERC20-like tokens.
-   /erc721: Contains the Go-based implementation of ERC721-like tokens.
-   /erc1155: Contains the Go-based implementation of ERC1155-like tokens.

## Example Usage:

## Creating a Contract:

Two structs have to be defined here:

Define a Go struct to represent your contract and embed contracts.TokenERC721Contract for base functionalities

For example let's create a MyTokenContract structure which inherits  the type of token you need to use direct from Kush Library.

  

```Go

type MyTokenContract struct {
    token.TokenERC721Contract
}

```

Here TokenERC721Contract inherits all the base functionalities defined under the package of ERC721 type token.

  

Embedding token. TokenERC721Contract:

To leverage the core functionalities provided by the library, embed the token.TokenERC721Contarct type within your custom contract `struct`. This grants your contract access to all the functionalities that are defined under ERC standards.

  
  

Define a Go struct to represent your contract and embed `kalpsdk.Contract` for base functionalities

```Go
type SmartContract struct {
    kalpsdk.Contract
    MyTokenContract
}


```

Struct Creation: Begin by defining a Go structure to represent your smart contract. This `struct`will serve as the foundation for encapsulating your contract's state variables, functions, and other relevant attributes.

  

Embedding `kalpsdk.Contra`ct: To leverage the core functionalities provided by the Kalp SDK, embed the `kalpsdk.Contract` type within your custom contract `struct`. This grants your contract access to essential features like transaction management, key-value storage, and more.

  
## Creating and Starting Chaincode:

Create a file main. go or else write the main function logic in the contract file itself.

  

```Go
func main() {
// Sample payable contract object
contract := kalpsdk.Contract{IsPayableContract: true}

// Initialize the contract with default values
    contract := kalpsdk.Contract{IsPayableContract: false}
    tokenContract := token.TokenERC721Contract{}

// KalpSDK Logger object for enhanced operation visibility
contract.Logger = kalpsdk.NewLogger()

// Initialize the SmartContract chaincode
    smartContract := &SmartContract{
        Contract:        contract,
        MyTokenContract: MyTokenContract{tokenContract},
        isInitialized:   false,
    }



smartContractChaincode, err := contractapi.NewChaincode(smartContract)
    if err != nil {
        contract.Logger.Errorf("Error creating SmartContract chaincode: %v", err)
        log.Panicf("Error creating SmartContract chaincode: %v", err)
    }

    
// Initialize the MyTokenContract chaincode
    myTokenContract := &MyTokenContract{
        TokenERC721Contract: tokenContract,
    }

    myTokenContractChaincode, err := contractapi.NewChaincode(myTokenContract)
    if err != nil {
        contract.Logger.Errorf("Error creating MyTokenContract chaincode: %v", err)
        log.Panicf("Error creating MyTokenContract chaincode: %v", err)
    }

    tokenChaincode, err := kalpsdk.NewChaincode(myTokenContractChaincode)
    if err != nil {
        contract.Logger.Errorf("Error creating MyTokenContract chaincode wrapper: %v", err)
        log.Panicf("Error creating MyTokenContract chaincode wrapper: %v", err)
    }

    


```

## Start the Chaincode:

  

```Go
// Starting the SmartContract chaincode
    contract.Logger.Info("Starting the SmartContract chaincode")
    if err := chaincode.Start(); err != nil {
        contract.Logger.Errorf("Error starting SmartContract chaincode: %v", err)
        log.Panicf("Error starting SmartContract chaincode: %v", err)
    } else {
        contract.Logger.Info("SmartContract chaincode started successfully")
    }



// Starting the MyTokenContract chaincode
    contract.Logger.Info("Starting the MyTokenContract chaincode")
    if err := tokenChaincode.Start(); err != nil {
        contract.Logger.Errorf("Error starting MyTokenContract chaincode: %v", err)
        log.Panicf("Error starting MyTokenContract chaincode: %v", err)
    } else {
        contract.Logger.Info("MyTokenContract chaincode started successfully")
    }

    // Prevent the main function from exiting
    select {}
}

```

## Initialize method for SmartContract:

  

```Go
func (s *SmartContract) Initialize(ctx *kalpsdk.TransactionContext, name string, symbol string) (bool, error) {
    // Initialize the contract
    success, err := s.MyTokenContract.Initialize(ctx, name, symbol)
    if err != nil || !success {
        log.Panicf("Error initializing contract: %v", err)
    }
    s.isInitialized = true

    return true, nil
}



```

  

## Modules:

  

The ERC20 module provides functionalities similar to the ERC20 standard in Solidity but here for the Kalp Chain this is defined in go.

Example usage:

```Go

// Mint creates new tokens and assigns them to an address
func (s *SmartContract) Mint(ctx *kalpsdk.TransactionContext, amount int, recipient string) error {
    // Check if the contract is initialized
    if !s.isInitialized {
        return fmt.Errorf("contract options need to be set before calling any function, call Initialize() to initialize contract")
    }

    // Mint new tokens using the ERC-20 contract's Mint method
    err := s.MyTokenContract.Mint(ctx, amount, recipient)
    if err != nil {
        return fmt.Errorf("error minting tokens: %v", err)
    }

    log.Printf("Minted %d tokens to %s\n", amount, recipient)
    return nil
}


```

### ERC721

The ERC721 module provides functionalities similar to the ERC721 standard, enabling the creation and management of non-fungible tokens (NFTs) on the Kalp Chain.

Example usage:

```Go

// TokenCreate method for SmartContract
func (s *SmartContract) TokenCreate(ctx *kalpsdk.TransactionContext, tokenId string, tokenURI string) error {
    // Check if the contract is initialized
    if !s.isInitialized {
        return fmt.Errorf("contract options need to be set before calling any function, call Initialize() to initialize contract")
    }

    // Example mint operation
    token, err := s.MyTokenContract.MintWithTokenURI(ctx, tokenId, tokenURI)
    if err != nil {
        return err
    }
    log.Printf("Minted NFT: %+v\n", token)
    return nil
}



// Balanceof checks the balance of a specific owner
func (s *SmartContract) Balanceof(ctx *kalpsdk.TransactionContextInterface, owner string) int {
    // Check if the contract is initialized
    if !s.isInitialized {
        return 0
    }
    // Check the balance using the MyTokenContract's BalanceOf method
    balance := s.MyTokenContract.BalanceOf(*ctx, owner)    

    // Return the balance
    return balance
}






```

  

### ERC1155:

The ERC1155 module provides functionalities for multi-token standards, allowing the management of multiple token types within a single contract on the Kalp Chain.

Example usage:

  

```Go
package main

import (
    "fmt"
    "log"

    "github.com/thekalpstudio/kush-go/contracts/token"
    "github.com/hyperledger/fabric-contract-api-go/contractapi"
    "github.com/p2eengineering/kalp-sdk-public/kalpsdk"
)

// MintBatch mints multiple tokens (batch) and assigns them to a recipient
func (s *SmartContract) MintBatch(ctx *kalpsdk.TransactionContext, ids []string, amounts []int, recipient string) error {
    // Check if the contract is initialized
    if !s.isInitialized {
        return fmt.Errorf("contract options need to be set before calling any function, call Initialize() to initialize contract")
    }

    // Mint multiple tokens using the ERC-1155 MintBatch function
    err := s.MyTokenContract.MintBatch(ctx, ids, amounts, recipient)
    if err != nil {
        return fmt.Errorf("error minting batch tokens: %v", err)
    }

    log.Printf("Minted batch tokens with ids %v and amounts %v to %s\n", ids, amounts, recipient)
    return nil
}


```

## Modules and Functions:

   `ERC20`:

-   func (s *SmartContract) Mint (ctx *kalpsdk.TransactionContext, amount int, recipient string) error: Creates a new ERC20 token.

-   func (s *SmartContract) Transfer (ctx *kalpsdk.TransactionContext, recipient string, amount int) error: Transfers tokens to a specified address.

-   func (s *SmartContract) BalanceOf(ctx *kalpsdk.TransactionContext, owner string) uint256: Returns the balance of a specified account.

   `ERC721`:
     
-   func (s *SmartContract) MintNFT(ctx *kalpsdk.TransactionContext, tokenId string, tokenURI string, recipient string) error: Creates a new ERC721 token.
-   func (s *SmartContract) TransferNFT(ctx *kalpsdk.TransactionContext, from string, to string, tokenId string) error: Transfers tokens to a specified address.
-   func (s *SmartContract) BalanceOfNFT(ctx *kalpsdk.TransactionContext, owner string) uint256: Returns the balance of a specified account.

   `ERC1155`:

-   func (s *SmartContract) MintBatch(ctx *kalpsdk.TransactionContext, ids [] string, amounts []int, recipient string) error: Mints the nft in batch.

-   func (s *SmartContract) TransferBatch(ctx *kalpsdk.TransactionContext, from string, to string, ids [] string, amounts []int) error: Transfers tokens to a specified address.

  
  

## Architecture:

This architecture provides a high-level understanding of how the KUSH-Go Library interacts with the Kalp SDK and the Kalp Blockchain to facilitate the creation and management of Tokens using ERC satndards like smart contracts. 

![](https://kalpstudio.gitbook.io/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FzGFpq2IY3RNXdqnvRKqW%252F333.png%3Falt%3Dmedia%26token%3D9ad2c676-48a8-4934-b97c-cdcf64777f07&width=768&dpr=4&quality=100&sign=af84a339&sv=1)

### Flow of Operations

1.  Smart Contract Layer (ERC20,721,1155 modules)
   -   When you use the KUSH-Go library to create or manage NFTs, you interact with the ERC721 Module.
    -   Example: Calling `MintTokenWithUri()` triggers the process of minting a new NFT, which is passed to the Kalp SDK for blockchain execution.
2.  Kalp SDK
   -   The Kalp SDK facilitates communication between the KUSH-Go library and the Kalp Blockchain.
    -   It ensures that the smart contract operations (like minting and transferring NFTs) are securely executed on the blockchain and that the token data is stored properly.
3.  Kalp Blockchain
   -   The Kalp Blockchain processes and records the transactions, maintaining the ledger of token ownership, minting, and transfers.

  

## License:

This project is licensed under the MIT License. See the `LICENSE` file for more information.

This documentation provides a comprehensive overview of the KUSH-Go Library, guiding users through the setup, installation, and usage of the library in their projects. For more detailed examples and usage scenarios please refer to the modules and example usage

This architecture provides a high-level understanding of how the KUSH-Go Library interacts with the Kalp SDK and the Kalp Blockchain to facilitate the creation and management of Tokens using ERC satndards like smart contracts. 

## Conclusion

The KUSH-Go Library is a robust and flexible solution for developers looking to build decentralized applications on the Kalp Blockchain using Go. By offering ERC20, ERC721, and ERC1155 token standards, KUSH-Go provides familiar yet high-performance tools for creating and managing both fungible and non-fungible tokens. Seamless integration with the Kalp SDK, combined with modular and reusable components, ensures a smooth development experience, while built-in security features like role-based access control further enhance the reliability of smart contracts. Whether you're building DeFi platforms, gaming applications, or tokenized marketplaces, KUSH-Go is an ideal library that simplifies the development process on the Kalp Chain.

!!! Note
    If you encounter any issues during development related to Kalp Studio, please raise a support ticket at [care.kalp.studio](mailto:care.kalp.studio). Our dedicated development team will assist you in finding the best possible solution.