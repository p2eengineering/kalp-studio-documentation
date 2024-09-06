<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">


# Soulbound Token (SBT) Smart Contract

### Overview

This document provides a detailed description of the Soulbound Token (SBT) smart contract implemented in Go, using the KalpSDK. The contract manages the creation, storage, and querying of non-transferable tokens (SBTs) that are permanently bound to a specific owner. The SBT contract enforces the unique and soulbound nature of these tokens, ensuring that each owner can hold only one SBT, which cannot be transferred or traded.

#### Prerequisites

-   **Familiarity with Go programming language:** Knowledge of Go syntax and basic programming constructs.
    
-   **Understanding of blockchain concepts:** Concepts such as smart contracts, state management, and transaction contexts are essential.
    
-   **Installation of KalpSDK:** The KalpSDK must be installed and configured to interact with the blockchain network.
    

#### Contract Initialization

**Initialize**

This function sets up the initial metadata for the Soulbound Token (SBT) contract and flags the contract as initialized to prevent re-initialization.

-   **Parameters:**
    
    -   `metadata` (SBTMetadata): A structure containing the metadata for the SBT, including a description.
        
    
-   **Example API Invocation:**
    
        
    ``` solidity
    func (s *SmartContract) Initialize(sdk kalpsdk.TransactionContextInterface, metadata SBTMetadata) error {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required, but the contract must not have been initialized previously.
        
    

#### Token Operations

**MintSBT**

Issues a new Soulbound Token (SBT) for the caller, ensuring that the caller does not already own an SBT.

-   **Parameters:**
    
    -   None. The caller's ID is automatically used to assign the SBT.
        
    
-   **Example API Invocation:**
    
  
    
    ``` solidity
    func (s *SmartContract) MintSBT(sdk kalpsdk.TransactionContextInterface) error {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required, but the caller must not already possess an SBT.
        
    

**QuerySBT**

Retrieves the details of an SBT based on the owner's ID and the token ID.

-   **Parameters:**
    
    -   `owner` (string): The ID of the owner.
        
    -   `tokenID` (string): The unique ID of the token.
        
    
-   **Example API Invocation:**
    
 
    
    ``` solidity
    func (s *SmartContract) QuerySBT(sdk kalpsdk.TransactionContextInterface, owner string, tokenID string) (*SoulboundToken, error) {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `*SoulboundToken`: A pointer to the SoulboundToken structure containing the token details.
        
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**GetSBTByOwner**

Retrieves the SBT associated with a given owner by their ID.

-   **Parameters:**
    
    -   `owner` (string): The ID of the owner whose SBT is being queried.
        
    
-   **Example API Invocation:**
    
 
    
    ``` solidity
    func (s *SmartContract) GetSBTByOwner(sdk kalpsdk.TransactionContextInterface, owner string) (*SoulboundToken, error) {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `*SoulboundToken`: A pointer to the SoulboundToken structure containing the token details.
        
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

#### Transfer Operation

**TransferSBT**

Blocks any attempt to transfer an SBT, enforcing its soulbound nature. This function will always return an error, as SBTs are non-transferable.

-   **Parameters:**
    
    -   `from` (string): The ID of the current owner.
        
    -   `to` (string): The ID of the intended recipient.
        
    -   `tokenID` (string): The unique ID of the token.
        
    
-   **Example API Invocation:**
    
  
    
    ``` solidity
    func (s *SmartContract) TransferSBT(sdk kalpsdk.TransactionContextInterface, from string, to string, tokenID string) error {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `error`: Error message indicating that the transfer is not allowed.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required, as the operation is inherently blocked.
        
    

#### Error Handling

All functions within the contract include comprehensive error handling to ensure that any issues during contract execution are clearly reported. This helps developers identify and address problems during contract interaction.

####  Security Considerations

-   **Single Ownership Enforcement:** The contract enforces that each owner can have only one SBT, preventing duplicate token creation.
    
-   **Non-Transferability:** The contract ensures that SBTs are non-transferable, maintaining the soulbound nature of these tokens.
    
-   **Initialization Check:** The contract includes a check to prevent re-initialization, ensuring that metadata is set only once.
    

### Conclusion

This Soulbound Token (SBT) smart contract provides a robust framework for creating, storing, and querying non-transferable tokens using the KalpSDK. The contract enforces the unique and soulbound nature of the tokens, ensuring that they remain permanently attached to their original owner. This documentation outlines the key functionalities and provides guidance on how to interact with the contract.

!!! Warning
    If you encounter any issues during development related to Kalp Studio, please raise a support ticket at [care.kalp.studio](mailto:care.kalp.studio). Our dedicated development team will assist you in finding the best possible solution.