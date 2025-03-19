<style>body { font-family: "Source Sans 3", sans-serif!important; }</style>

<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# Kalp Wallet 

Kalp Wallet is a versatile cryptocurrency wallet that enables you to manage digital assets across multiple blockchain networks. It offers a range of wallet types—Self-Custodial, Custodial, and MPC (Multi-Party Computation)—so you can choose the level of control and security that suits your needs. This document provides an overview of the wallet's key features, supported blockchain networks, and core functionalities.

## Key Features

- **Blockchain Support**: Kalp Wallet supports the proprietary Kalp DLT blockchain.
- **Diverse Wallet Options**: Users can choose from Self-Custodial, Custodial, and MPC wallets, each offering different levels of control and security.
- **Secure Transaction Signing**: The wallet supports signing transactions for various function types, ensuring secure interactions with supported blockchains.
- **Smart Contract Deployment**: Kalp wallet facilitates the deployment of smart contracts on supported blockchains, providing a streamlined process for developers.
- **API Integration**: The wallet offers an Open API system for programmatic interaction, enabling developers to integrate kalp wallet services into their applications.

## Supported Blockchain Networks

Kalp wallet supports the KALP DLT (proprietary blockchain)

## Wallet Types

### Self-Custodial Wallet

The Self-Custodial wallet gives users full control over their funds and private keys. It is ideal for advanced users who understand the responsibilities of self-custody.

- **User Control**: Users manage their own private keys and seed phrases.
- **Security**: No sensitive information is stored on the backend.

### Custodial Wallet

The Custodial wallet offers a more user-friendly experience by managing private keys on behalf of the user. It is suitable for users who prefer convenience and ease of use.

- **Managed Keys**: Private keys are generated and managed by the Kalp wallet service.
- **Encryption**: Private keys are encrypted and securely stored in both the database and a secure vault.

### MPC Wallet

The MPC (Multi-Party Computation) wallet provides a balance between security and usability by distributing key ownership between the user and the service.

- **Distributed Keys**: The private key is divided into three parts (shards) using Shamir's Secret Sharing.
- **Authentication**: Authentication is performed using phone, email, and Google Auth.

## Core Functionalities

### Transaction Signing

Kalp wallet supports signing transactions for various function types across supported blockchains, ensuring secure and authenticated interactions.

- **Supported Function Types**: View, Pure, Payable, and Non-payable functions.
- **Secure Signing**: Transactions are signed using the appropriate wallet type, ensuring security.

### Smart Contract Deployment

Kalp wallet facilitates the deployment of smart contracts on supported blockchains, providing a streamlined process for developers.

- **Supported File Types**: ZIP files for KALP DLT code deployment.
- **Deployment Process**: The service compiles and processes the code, signs the deployment transaction, and broadcasts it to the selected blockchain network.

### API Integration

Kalp wallet offers an Open API system that allows users to interact with wallet services programmatically.

- **API Key Management**: Each user is assigned a unique API key for authentication.
- **Secure Communication**: API keys and tokens provide secure and authenticated access to Kalp wallet services.

## Conclusion

Kalp wallet is a comprehensive and secure cryptocurrency wallet service designed to meet the diverse needs of users and developers. With its support for KALP DLT network, various wallet types, and robust security features, Kalp wallet is well-positioned to provide a seamless and secure experience for managing digital assets.