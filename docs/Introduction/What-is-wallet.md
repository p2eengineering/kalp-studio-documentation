<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>

<link  href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap"  rel="stylesheet">  <link  rel="stylesheet"  href="https://fonts.googleapis.com/icon?family=Material+Icons">

#  Introduction

Kalp Wallet is a versatile cryptocurrency wallet service that supports multiple blockchain networks and offers various wallet types to cater to different user needs and security preferences. This document provides a detailed technical overview of the Kalp Wallet architecture, features, and implementation.

### 1.1 Supported Blockchain Networks

Kalp Wallet currently supports the following blockchain networks:

1.  Ethereum
    
2.  Polygon
    
3.  Avalanche
    
4.  Optimism
    
5.  Arbitrum
    
6.  Fantom
    
7.  Solana
    
8.  Binance Smart Chain (BSC)
    
9.  Kalp Tantra (proprietary blockchain)
    

Each blockchain is supported through separate, segregated services to ensure seamless integration and maintainability.

## 2. Wallet Types

Kalp Wallet offers three distinct wallet types, each with its own security model and user control level.

### 2.1 Self Custodial Wallet

The Self Custodial wallet provides users with full control over their funds and private keys.

#### Implementation Details:

-   A cryptographic wallet is generated along with a seed phrase.
    
-   The private key is derived from the seed phrase.
    
-   Both the seed phrase and private key are returned directly to the user.
    
-   No sensitive information (seed phrase or private key) is stored on the backend.
    

#### Security Considerations:

-   Users are responsible for securely storing their seed phrase and private key.
    
-   Loss of the seed phrase or private key results in irretrievable loss of funds.
    
-   Recommended for advanced users who understand the implications of self-custody.
    

### 2.2 Custodial Wallet

The Custodial wallet offers a more user-friendly experience by managing private keys on behalf of the user.

#### Implementation Details:

-   Private keys are generated and managed by the Kalp Wallet service.
    
-   Private keys are encrypted using AES CTR 256 encryption.
    
-   Encrypted private keys are stored in both the database and a secure vault.
    
-   Users do not have direct access to their private keys.
    

#### Security Considerations:

-   Encryption key management is crucial for the security of user funds.
    
-   Regular security audits and penetration testing should be conducted.
    
-   Backup and disaster recovery procedures must be in place for the database and vault.
    

### 2.3 MPC Wallet

The MPC (Multi-Party Computation) wallet provides a balance between security and usability by distributing key ownership between the user and the service.

#### Implementation Details:

-   The wallet is created using a secret sharing scheme (Shamir's Secret Sharing).
    
-   The private key is divided into three parts (shards), where any two parts are sufficient to recover the 
    full private key.
    
-   Authentication is performed using three methods: phone, email, and Google Auth.
    
-   User identifiers are the user's phone number, email address, and Google sub-ID.
    
-   Shard distribution:
    
    1.  User shard: Sent to the frontend and stored in local storage.
        
    2.  Database shard: Encrypted and stored in the database.
        
    3.  Vault shard: Encrypted and stored in the secure vault.
        
-   The user's shard is hashed with the user identifier and stored in the database for verification.
    

#### Authentication Process:

1.  User provides their shard and identifier.
    
2.  The provided shard is hashed with the identifier.
    
3.  The resulting hash is compared with the stored hash in the database.
    
4.  If the hashes match, the user's shard is verified.
    

#### Security Considerations:

-   Proper encryption and hashing algorithms must be used for shard storage and verification.
    
-   The frontend storage of the user's shard introduces potential security risks if the user's device is compromised.
    
-   Regular rotation of encryption keys and review of access controls is recommended.

## . Transaction Signing

Kalp Wallet supports signing transactions for various function types across supported blockchains.

### 3.1 Supported Function Types

-   View functions
    
-   Pure functions
    
-   Payable functions
    
-   Non-payable functions
    

### 3.2 Implementation Details

-   The Kalp Gateway provides API routes for Kalp and Ethereum transactions.
    
-   The gateway calls a generic sign transaction function in the Kalp Wallet service.
    
-   For Custodial and MPC wallets, the service has access to the private keys (or shards) necessary for signing.
    
-   API keys are provided to the Kalp Gateway on a per-user basis for authentication and authorization.
    

### 3.3 Security Considerations

-   API keys must be securely managed and rotated regularly.
    
-   All communication between the Gateway and Wallet service should be encrypted.
    
-   Access to private keys and signing functions should be strictly controlled and audited.

## 4. Smart Contract Deployment

Kalp Wallet supports the deployment of smart contracts on supported blockchains.

### 4.1 Supported File Types

-   Solidity (.sol) files for EVM-compatible blockchains Upcoming zip file Functionality
    
-   ZIP files for Kalp Tantra code deployment
    

### 4.2 Implementation Details

-   The service accepts the smart contract code file.
    
-   For Solidity files, the code is compiled using the solc compiler.
    
-   For Kalp Tantra, the ZIP file is processed according to the Kalp Tantra deployment specifications.
    
-   The deployment transaction is signed using the appropriate wallet type.
    
-   The signed transaction is broadcast to the selected blockchain network.
    

### 4.3 Security Considerations

-   Code should be thoroughly audited before deployment.
    
-   Gas limits and fees should be carefully managed to prevent excessive costs.
    
-   Access to deployment functionality should be restricted and logged.
    

## 5. Kalp Gateway

The Kalp Gateway serves as an intermediary between client applications and the Kalp Wallet service.

### 5.1 Functionality

-   Generates API routes for interacting with Kalp Wallet and Ethereum-compatible blockchains.
    
-   Provides a standardized interface for transaction signing and deployment.
    
-   Manages API keys for user authentication and authorization.
    

### 5.2 Implementation Details

-   Developed using Express.js and TypeScript for robust, type-safe API development.
    
-   Integrates with Kalp Wallet for transaction signing and key management.
    
-   Implements rate limiting and other security measures to prevent abuse.
    

### 5.3 Security Considerations

-   API keys should be securely transmitted and stored.
    
-   All API endpoints should implement proper authentication and authorization checks.
    
-   Input validation and sanitization should be performed on all incoming requests.
    

## 6. Architecture Overview

The Kalp Wallet ecosystem is designed with a modular, scalable architecture.

### 6.1 Service Segregation

-   Each supported blockchain has its own dedicated service.
    
-   Services are implemented using Express.js and TypeScript.
    
-   This segregation allows for easier maintenance, updates, and scaling of individual blockchain support.
    

### 6.2 Key Components

1.  Wallet Management Service
    
2.  Transaction Signing Service
    
3.  Smart Contract Deployment Service
    
4.  Kalp Gateway
    
5.  Database (for storing encrypted keys and user data)
    
6.  Secure Vault (for additional key storage)
    
7.  Authentication Service
    

### 6.3 Data Flow

1.  Client applications interact with the Kalp Gateway.
    
2.  The Gateway authenticates requests and routes them to the appropriate service.
    
3.  Services interact with the Wallet Management Service for key retrieval and signing.
    
4.  Signed transactions are broadcast to the respective blockchain networks.
    

## 7.Kalp Wallet (OPEN API) Key Generation and Usage

### Overview

Kalp Wallet provides an Open API system that allows users to interact with the wallet services programmatically. Each user is assigned a unique API key that is used to authenticate requests to the Kalp Gateway. This document outlines the process of API key generation, regeneration, and usage.

### API Key Characteristics

1.  Unique per user
    
2.  Only one active API key per user at any time
    
3.  Can be regenerated, which invalidates the previous key
    
4.  Used in conjunction with a Kalp Auth Token for enhanced security
    

### Detailed Process

#### 1. API Key Generation

-   User requests an API key through the Kalp Wallet interface
    
-   Kalp Wallet verifies the user's identity and permissions
    
-   A unique API key is generated and associated with the user's account
    
-   The API key is stored securely in the database, hashed for security
    
-   The plain text API key is returned to the user (only time it's visible in full)
    

#### 2. API Key Regeneration

-   User requests a new API key
    
-   Kalp Wallet verifies the user's identity and permissions
    
-   A new unique API key is generated
    
-   The old API key is immediately invalidated and deleted from the database
    
-   The new API key is stored securely in the database, hashed for security
    
-   The new plain text API key is returned to the user
    

#### 3. API Key Usage

-   User obtains a Kalp Auth Token through the standard authentication process
    
-   User makes an API request to the Kalp Gateway, including:
    
    -   The API key in the request headers
        
    -   The Kalp Auth Token in the request headers
        
-   Kalp Gateway validates both the API key and the Auth Token
    
-   If valid, the request is processed and routed to the appropriate Kalp Wallet service
    
-   The Kalp Wallet service processes the request and returns the result
    
-   Kalp Gateway returns the result to the user
    

#### 4. API Route Generation

-   Kalp Gateway dynamically generates API routes based on available Kalp Wallet services
    
-   These routes are documented and made available to users
    
-   Each route specifies the required parameters and expected responses
    

### Security Considerations

-   API keys are always transmitted and stored in a hashed format, except when initially provided to the user
    
-   The combination of API key and Kalp Auth Token provides two-factor authentication for API requests
    
-   API key permissions can be scoped to limit access to certain functions or data
    
-   Failed API key attempts are logged and may result in temporary lockouts to prevent brute force attacks.
