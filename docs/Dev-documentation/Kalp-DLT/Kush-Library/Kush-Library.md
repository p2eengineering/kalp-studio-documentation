<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# Kush Library Documentation

## Overview:

-   The KUSH-Go Library is an open-source Go-based implementation of token standards such as ERC20, ERC721, and ERC1155, designed to work seamlessly with the Kalp SDK on the Kalp Blockchain.
-   It is inspired by the popular OpenZeppelin contracts used in the Ethereum ecosystem, offering familiar functionality and security standards, but in a Go environment, specifically tailored for the Kalp Chain.
-   The library is ideal for developers who want to build secure and modular smart contracts for decentralized applications (dApps) on the Kalp Chain.
-   It provides reusable components for token creation, management, and transfer, supporting various use cases like fungible tokens (ERC20), non-fungible tokens (ERC721), and multi-token standards (ERC1155). By leveraging the Kalp SDK, the library ensures seamless interaction with the Kalp Blockchain for transaction execution and storage.

## Key Features of KUSH-Go Library:

  
1.  Go-based Token Standard Implementations:
-   The KUSH-Go Library implements token standards like ERC20, ERC721, and ERC1155 using Go, providing a robust and high-performance solution for building smart contracts on the Kalp Blockchain.

2.  ERC20 – Fungible Token Support:
   -   Create and manage fungible tokens (tokens where all units are identical, like cryptocurrencies). Includes functionalities like transferring tokens, querying balances, and minting new tokens.
   -   Key Functions: `Transfer()`, `BalanceOf()`, `Mint()`, and `Approve()`.

3.  ERC721 – Non-Fungible Token (NFT) Support:
 -   Build and manage non-fungible tokens (NFTs), allowing unique assets like digital art, collectibles, and game items to be tokenized on the Kalp Blockchain.
 -   Key Functions: `MintTokenWithUri()`, `TransferFrom()`, `OwnerOf()`.

4.  ERC1155 – Multi-Token Standard:
-   Manage multiple types of tokens (both fungible and non-fungible) within a single smart contract. Perfect for applications where multiple asset types are needed, like gaming platforms or collectibles.
-   Key Functions: `Mint()`,`MintBatch()`,`Transfer() ,TransferBatch()`.

5.  Seamless Kalp SDK Integration:
 -   The library integrates with the Kalp SDK, ensuring easy interaction with the Kalp Blockchain. Developers can create and manage tokens that are stored and executed securely on the Kalp Chain, without needing to worry about low-level blockchain interactions.

6.  Modular and Reusable Components:
   -   KUSH-Go is designed to be modular, allowing developers to easily plug in and extend functionality according to their needs. The token standards and utilities are built as reusable components for easier contract management and scalability.

7.  Familiar OpenZeppelin-like Structure:
   -   The library mirrors the functionality and structure of OpenZeppelin contracts, making it easier for developers familiar with Ethereum and Solidity to quickly adapt to the Kalp Chain environment using Go.

8.  Security Features:
   -   Includes built-in security features like AccessControl for role-based permissions and Pausable contracts to allow administrators to halt contract activity in case of emergencies or vulnerabilities.

9.  Ideal for Decentralized Applications (dApps):

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

1.Define a Go struct to represent your contract and embed contracts.TokenERC721Contract for base functionalities

For example let's create a MyTokenContract structure which inherits  the type of token you need to use direct from Kush Library.

  

```Go

type MyTokenContract struct {
    token.TokenERC721Contract
}

```

Here TokenERC721Contract inherits all the base functionalities defined under the package of ERC721 type token.

  

Embedding token. TokenERC721Contract:

To leverage the core functionalities provided by the library, embed the token.TokenERC721Contarct type within your custom contract `struct`. This grants your contract access to all the functionalities that are defined under ERC standards.

  
  

2. Define a Go struct to represent your contract and embed `kalpsdk.Contract` for base functionalities

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

## Conclusion

The KUSH-Go Library is a robust and flexible solution for developers looking to build decentralized applications on the Kalp Blockchain using Go. By offering ERC20, ERC721, and ERC1155 token standards, KUSH-Go provides familiar yet high-performance tools for creating and managing both fungible and non-fungible tokens. Seamless integration with the Kalp SDK, combined with modular and reusable components, ensures a smooth development experience, while built-in security features like role-based access control further enhance the reliability of smart contracts. Whether you're building DeFi platforms, gaming applications, or tokenized marketplaces, KUSH-Go is an ideal library that simplifies the development process on the Kalp Chain.

!!! Note
    If you encounter any issues during development related to Kalp Studio, please raise a support ticket at [care.kalp.studio](mailto:care.kalp.studio). Our dedicated development team will assist you in finding the best possible solution.