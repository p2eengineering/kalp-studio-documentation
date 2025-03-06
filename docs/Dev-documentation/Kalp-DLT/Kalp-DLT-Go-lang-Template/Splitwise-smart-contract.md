<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# Splitwise Smart Contract

### Overview

This document outlines the Splitwise Smart Contract implemented in Go using the KalpSDK. The contract manages shared expenses and debts between participants. It allows users to record expenses, calculate and split the cost among participants, and settle debts. The smart contract provides a transparent and decentralized way to manage shared financial obligations.

#### Prerequisites

-   **Familiarity with Go programming language:** Understanding of basic Go syntax and constructs.
    
-   **Basic understanding of blockchain concepts:** Knowledge of smart contracts, state management, and transaction contexts.
    
-   **Installation of the KalpSDK:** The KalpSDK must be installed and set up to interact with the blockchain network.
    

#### Contract Functions

**Function: CreateExpense**

Adds a new expense to the world state with the provided details, recording the description, amount, payer, and participants.

-   **Parameters:**
    
    -   `expenseID` (string): A unique identifier for the expense.
        
    -   `description` (string): A brief description of the expense.
        
    -   `amount` (int): The total amount of the expense.
        
    -   `payer` (string): The ID of the participant who paid for the expense.
        
    -   `participants` ([]string): A list of IDs of participants involved in the expense.
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (s *SmartContract) CreateExpense(ctx kalpsdk.TransactionContextInterface, expenseID string, description string, amount int, payer string, participants []string) error {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: GetExpense**

Retrieves the details of an expense from the world state using the provided expense ID.

-   **Parameters:**
    
    -   `expenseID` (string): The unique identifier of the expense to retrieve.
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (s *SmartContract) GetExpense(ctx kalpsdk.TransactionContextInterface, expenseID string) (*Expense, error) {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `*Expense`: A pointer to the Expense structure containing the expense details.
        
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: SplitExpense**

Calculates the individual share of each participant in the expense and records the corresponding debts in the world state.

-   **Parameters:**
    
    -   `expenseID` (string): The unique identifier of the expense to split.
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (s *SmartContract) SplitExpense(ctx kalpsdk.TransactionContextInterface, expenseID string) error {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: SettleDebt**

Removes a debt from the world state once it has been settled between the participants.

-   **Parameters:**
    
    -   `from` (string): The ID of the participant who owed the debt.
        
    -   `to` (string): The ID of the participant who was owed the debt.
        
    -   `expenseID` (string): The unique identifier of the expense associated with the debt.
        
    
-   **Example API Invocation:**
    
        
    ``` solidity
    func (s *SmartContract) SettleDebt(ctx kalpsdk.TransactionContextInterface, from string, to string, expenseID string) error {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

**Function: QueryAllDebts**

Returns all debts recorded between users in the world state. This function retrieves all debts using a query that matches the "DEBT_" prefix in the state database.

-   **Parameters:**
    
    -   None.
        
    
-   **Example API Invocation:**
    
    
    
    ``` solidity
    func (s *SmartContract) QueryAllDebts(ctx kalpsdk.TransactionContextInterface) ([]Debt, error) {
        // Function implementation
    }
    ```
    
-   **Returns:**
    
    -   `[]Debt`: A slice of Debt structures containing all debts recorded between users.
        
    -   `error`: Error message if the operation fails.
        
    
-   **Authorization Required:**
    
    -   No specific authorization is required.
        
    

#### Error Handling

Each function in the contract includes comprehensive error handling to ensure clear reporting of issues during contract execution. This aids developers in identifying and resolving problems during contract interaction.

#### Security Considerations

-   **Accurate Debt Recording:** The contract ensures that all debts are accurately recorded in the world state, preventing discrepancies in financial obligations between participants.
    
-   **Data Integrity:** The contract enforces data integrity by validating the existence of expenses before performing operations like splitting or settling debts.
    

### Conclusion

The Splitwise Smart Contract provides a decentralized and transparent way to manage shared expenses and debts among participants. With functionalities for creating expenses, splitting costs, and settling debts, it offers a complete solution for managing financial obligations on the blockchain. This documentation serves as a comprehensive guide to interacting with the contract.

!!! Note
    If you encounter any issues during development related to Kalp Studio, please raise a support ticket at [care.kalp.studio](mailto:care.kalp.studio). Our dedicated development team will assist you in finding the best possible solution.
