<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# Supply Chain Smart Contract

### Overview

This document provides a detailed description of the Supply Chain Smart Contract implemented in Go using the KalpSDK. The contract manages participants, assets, and their movements across the supply chain. It allows for the creation of participants, the manufacturing and movement of assets, and querying of assets and participants. The contract ensures transparency and traceability in the supply chain process.

#### Prerequisites

-   **Familiarity with Go programming language:** Knowledge of Go syntax and basic programming constructs.
    
-   **Understanding of blockchain concepts:** Concepts such as smart contracts, state management, and transaction contexts are essential.
    
-   **Installation of KalpSDK:** The KalpSDK must be installed and configured to interact with the blockchain network.
    

#### Contract Functions

**Function: Init**

Initializes the smart contract by setting up the counters for participants and assets.

-   **Parameters:**
    
    -   None.
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (t *SupplyChainContract) Init(ctx kalpsdk.TransactionContextInterface) error {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: CreateParticipant**

Creates a new participant in the supply chain with a unique ID.

-   **Parameters:**
    
    -   `name` (string): Name of the participant.
        
    -   `userType` (string): Type of participant (e.g., Supplier, Plant, Quality, Warehouse, Distributor, Customer).
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (t *SupplyChainContract) CreateParticipant(ctx kalpsdk.TransactionContextInterface, name, userType string) (string, error) {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `string`: The ID of the newly created participant.
        
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: CreateAsset**

Creates a new asset in the supply chain with a unique ID and associates it with a participant (manufacturer).

-   **Parameters:**
    
    -   `name` (string): Name of the asset.
        
    -   `description` (string): Description of the asset.
        
    -   `participantID` (string): ID of the participant (manufacturer) creating the asset.
        
    -   `price` (uint64): Price of the asset.
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (t *SupplyChainContract) CreateAsset(ctx kalpsdk.TransactionContextInterface, name, description, participantID string, price uint64) (string, error) {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `string`: The ID of the newly created asset.
        
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: MoveAsset**

Moves an asset from one participant to another in the supply chain.

-   **Parameters:**
    
    -   `assetID` (string): ID of the asset to be moved.
        
    -   `participantID` (string): ID of the participant to whom the asset is being moved.
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (t *SupplyChainContract) MoveAsset(ctx kalpsdk.TransactionContextInterface, assetID, participantID string) error {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: UpdateAssetStatus**

Updates the status of an asset in the supply chain.

-   **Parameters:**
    
    -   `assetID` (string): ID of the asset whose status is to be updated.
        
    -   `ownerID` (string): ID of the current owner of the asset.
        
    -   `newAssetStatus` (string): New status to be assigned to the asset.
        
    
-   **Example API Invocation:**
    
        
    ``` solidity
    func (t *SupplyChainContract) UpdateAssetStatus(ctx kalpsdk.TransactionContextInterface, assetID, ownerID, newAssetStatus string) error {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: SendToCustomer**

Sells an asset to a customer, updating the ownership and status of the asset.

-   **Parameters:**
    
    -   `assetID` (string): ID of the asset to be sold.
        
    -   `customerID` (string): ID of the customer receiving the asset.
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (t *SupplyChainContract) SendToCustomer(ctx kalpsdk.TransactionContextInterface, assetID, customerID string) error {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: QueryAsset**

Retrieves the details of a specific asset from the world state.

-   **Parameters:**
    
    -   `assetID` (string): ID of the asset to query.
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (t *SupplyChainContract) QueryAsset(ctx kalpsdk.TransactionContextInterface, assetID string) (*Asset, error) {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `*Asset`: A pointer to the Asset structure containing the asset details.
        
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: QueryAllAssets**

Retrieves all assets stored in the world state within a specified range.

-   **Parameters:**
    
    -   None.
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (t *SupplyChainContract) QueryAllAssets(ctx kalpsdk.TransactionContextInterface) ([]Asset, error) {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `[]Asset`: A slice of Asset structures containing the details of all assets.
        
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: QueryAllParticipants**

Retrieves all participants stored in the world state within a specified range.

-   **Parameters:**
    
    -   None.
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (t *SupplyChainContract) QueryAllParticipants(ctx kalpsdk.TransactionContextInterface) ([]Participant, error) {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `[]Participant`: A slice of Participant structures containing the details of all participants.
        
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

#### Helper Functions

**Function: GetTxTimestampChannel**

Retrieves the transaction timestamp from the blockchain.

-   **Parameters:**
    
    -   None.
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (t *SupplyChainContract) GetTxTimestampChannel(ctx kalpsdk.TransactionContextInterface) (string, error) {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `string`: The transaction timestamp as a string.
        
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: getCounter**

Retrieves the counter value for a specific type (e.g., asset or participant).

-   **Parameters:**
    
    -   `assetType` (string): The type of counter to retrieve (e.g., "AssetCounterNO", "ParticipantCounterNO").
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func getCounter(ctx kalpsdk.TransactionContextInterface, assetType string) (int, error) {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `int`: The current counter value.
        
    -   `error`: Error message if the operation fails.
        
    

**Function: incrementCounter**

Increments the counter value for a specific type (e.g., asset or participant).

-   **Parameters:**
    
    -   `assetType` (string): The type of counter to increment (e.g., "AssetCounterNO", "ParticipantCounterNO").
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func incrementCounter(ctx kalpsdk.TransactionContextInterface, assetType string) (int, error) {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `int`: The new counter value.
        
    -   `error`: Error message if the operation fails.
        
    

#### Error Handling

All functions within the contract include comprehensive error handling to ensure that any issues during contract execution are clearly reported. This aids developers in identifying and resolving problems during contract interaction.

#### Security Considerations

-   **Ownership Verification:** The contract ensures that only the current owner can move or update the status of an asset.
    
-   **Participant Validation:** The contract verifies the existence and type of participants before performing operations like asset creation or movement.
    
-   **Data Integrity:** The contract enforces data integrity by validating inputs and ensuring accurate updates to the world state.
    

### Conclusion

The Supply Chain Smart Contract provides a decentralized and transparent way to manage participants, assets, and their movements within a supply chain. With functionalities for creating participants and assets, moving assets, updating statuses, and querying data, it offers a complete solution for managing supply chain processes on the blockchain. This documentation serves as a comprehensive guide to interacting with the contract.