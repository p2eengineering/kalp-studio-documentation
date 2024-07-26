<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>

<link  href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap"  rel="stylesheet">  <link  rel="stylesheet"  href="https://fonts.googleapis.com/icon?family=Material+Icons">

# Overview

Kalp Instant Deployer (KID) is a service designed to handle the deployment of smart contracts and track their status post-deployment. This documentation outlines the key processes involved in the deployment and tracking, including token and subscription validation, contract identification, request sending, and status tracking via a cron job.

## Key Processes

### Token and Subscription Validation

Each request to the KID service includes a bearer token. The following steps are performed for validation:

1.  **Token Reception**: The bearer token is received with the request.
    
2.  **Validation Service**: The token is sent to a validation service to check:
    
    -   The validity of the token.
        
    -   The user's subscription status.
        
3.  **Proceed or Reject**:
    
    -   If the token is valid and the subscription is sufficient for the KID service, the request proceeds.
        
    -   If the token is invalid or the subscription is insufficient, the request is rejected.
        

### Identify Contract

Upon successful token and subscription validation, the type of smart contract is verified:

1.  **Contract Verification**: Determine whether the uploaded smart contract is:
    
    -   EVM (Ethereum Virtual Machine) based.
        
    -   Kalptantra based.
        
2.  **Contract Handling**: Based on the type, handle the contract accordingly for deployment.
    

### Send Request

Once the contract type is identified, the deployment process is initiated:

1.  **Request Formation**: Formulate a request to the wallet service with the contract details.
    
2.  **Deployment Request**: Send the request to the wallet service for deployment.
    
3.  **Transaction Hash**:
    
    -   The wallet service deploys the smart contract.
        
    -   A transaction hash is provided to track the status of the deployment.
        

### Cron Job for Status Tracking

KID includes a cron job mechanism to ensure the status of pending smart contracts is updated regularly:

1.  **Cron Job Execution**: A cron job runs every minute.
    
2.  **Fetch Status**:
    
    -   The cron job fetches the status of all pending smart contracts.
        
    -   The transaction hash provided during deployment is used to check the status.
        
3.  **Update Response**: The status information is updated accordingly in the response database or system.
