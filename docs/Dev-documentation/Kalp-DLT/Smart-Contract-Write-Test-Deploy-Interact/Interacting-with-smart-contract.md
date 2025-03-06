<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">



# Interacting with smart contract

Interacting with blockchain through smart contract is possible generating API endpoints and kalp studio helps you in creating it and also help you navigate the list of smart contracts.

## How to generate API endpoints?

API endpoints are essential for integrating and automating various processes in blockchain development. Kalp Studio provides a robust platform that allows developers to efficiently create, manage, and generate API endpoints for their smart contracts.

### Login to Kalp Studio

Navigate to the Kalp Studio login page and enter your credentials to access your dashboard. Click on Build Smart Contract.

![enter image description here](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/7.+API+Gateway/1.png)

### **Access the API Gateway Section**

On the left-hand menu, select "API Gateway."

![enter image description here](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/7.+API+Gateway/2.png)


![enter image description here](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/7.+API+Gateway/3.png)

If you haven't subscribed to any API Gateway, you'll see a message prompting you to subscribe.

!!! Note 
    To create and manage API endpoints, you need to subscribe to one of the plans  
    offered by Kalp Studio. Ensure you upgrade your plan if you're currently on the free  
    tier to access more features and higher limits.

### **Create or Select a Smart Contract**


![enter image description here](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/7.+API+Gateway/4.png)

Once subscribed, you can manage and generate API endpoints for your smart contracts. Select the desired smart contract from the list or create a new one.

### **Generate Endpoints**

![enter image description here](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/7.+API+Gateway/5.png)

For the selected smart contract, click "Generate Endpoints." This action will create the necessary API endpoints.

### Endpoint Generated

![enter image description here](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/7.+API+Gateway/6.png)

Once you select generate endpoint, a pop-up will appear, notifying that the endpoint has been generated.

#### View and Manage Endpoints

After generating the endpoints, you can view and manage them. The status of each endpoint (success or failure) will be displayed, along with details like the network and blockchain used.

#### Check and Use API Parameters

![enter image description here](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/7.+API+Gateway/7.png)

Click on "Check Params" to view the details and parameters for each API endpoint. This will help you understand how to integrate and use these endpoints in your applications.

## How to Navigate to the List of Smart Contract?

Navigating the Kalp Studio platform to access the smart contract list is a straightforward process. Follow these steps to seamlessly move through the dashboard and find the information you need.

#### Step-by-Step Guide

**Access the Dashboard:**

Upon logging into Kalp Studio, you will land on the **Dashboard**. The dashboard provides an overview of your activities and quick access to essential features.

![enter image description here](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/7.+API+Gateway/8.png)

**Locate the Sidebar Menu:**  
On the left-hand side, you will find a vertical sidebar menu. This menu contains various options including:

-   Dashboard
    
-   Credits
    
-   Docs
    
-   Wallet
    
-   Faucet
    
-   Help and Support
    

**Select the 'Smart Contract' Option:**

Click on the **Smart Contract** tab in the sidebar. This will redirect you to the section dedicated to managing and deploying smart contracts.


![enter image description here](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/7.+API+Gateway/9.png)

**Navigate to API Gateway:**

Within the Smart Contract section, look for the **API Gateway** tab. Clicking on this will bring you to the page where you can manage API endpoints related to your smart contracts.

![enter image description here](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/7.+API+Gateway/10.png)

**View Smart Contract List:**

The API Gateway page will display a list of smart contracts you have created. This list includes details such as:

-   ID
    
-   Name
    
-   Category
    
-   Status
    
-   Network
    
-   Blockchain
    
-   Creation Date
    
-   Actions available (e.g., Generate Endpoint, Re-Generate Endpoint)
    

#### Key Features on the Smart Contract List Page

-   **Search and Filter:**
    

Use the search bar and filters to quickly find specific smart contracts.

-   **Actions:**
    

Perform actions such as generating or re-generating endpoints for your smart contracts.

-   **Status Monitoring:**
    

Easily monitor the status of your smart contracts to ensure they are active and functioning correctly.

-   **Pagination:**
    

If you have numerous smart contracts, use the pagination controls at the bottom to navigate through the pages.

By following these steps, you can efficiently navigate to the smart contract list within Kalp Studio, manage your smart contracts, and utilize the platform's full potential.

### Postman Testing for Kalp Smart Contract API Endpoints

Following successful smart contract deployment and API endpoint generation within Kalp Studio, delve into the essential steps for testing these endpoints using Postman:

1 .  **Reading from the Smart Contract**

Kalp Studio enables efficient data retrieval from deployed smart contracts using  **read-only methods**. These methods allow your application to query the blockchain ledger without modifying its state.

**Example:**  To retrieve a user's account balance, you would invoke the  `ClientAccountBalance`  function through the generated API endpoint. This function would fetch the relevant data from the ledger and return it to your application.

By leveraging read-only methods, you can access crucial information from the blockchain without altering its state, ensuring data integrity and facilitating various application functionalities.

![](https://kalpstudio.gitbook.io/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FoidLFI4i6wlDiKyMbXjL%252F111.png%3Falt%3Dmedia%26token%3Dd7aaa9f2-288a-41ef-9a96-a7a7c87e0436&width=768&dpr=4&quality=100&sign=b2314d0e&sv=1)

2 .  **Writing to the Smart Contract**

Kalp Studio empowers developers to perform  **write operations**, which involve modifying the state of the blockchain ledger through smart contract interactions. These operations typically involve sending transactions to specific contract functions provided by the Kalp SDK.

**Example:**  To transfer tokens, you would utilize the appropriate function (e.g.,  `Transfer`) through the generated API endpoint. This function would initiate a transaction on the blockchain, deducting tokens from the sender's account and crediting them to the recipient's account.

![](https://kalpstudio.gitbook.io/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FNpNtivQVUvB79jOutbkv%252F222.png%3Falt%3Dmedia%26token%3D39375330-d28e-4d11-b9d4-5d7639c93246&width=768&dpr=4&quality=100&sign=5e31dd3f&sv=1)

3 .  **Transaction Management:**  With the Kalp SDK, developers can efficiently manage transactions on the blockchain network. It provides functions for submitting transactions, querying transaction information, and retrieving transaction history. This simplifies the process of interacting with the blockchain and ensures the integrity of transactional operations.

**Example:**  All the Functions provided as:  `PutStateWithKYC, DelStateWithoutKYC, DelStateWithKYC, GetState, GetTxID, GetChannelD, SetEvent, GetUserID.`

### Conclusion

You're now ready to begin your journey as a Kalp blockchain developer. Experiment with different types of smart contracts, explore the functionalities offered by the Kalp SDK, and start building innovative DApps on the Kalp blockchain.

!!! Note
    If you encounter any issues during development related to Kalp Studio, please raise a support ticket at [care.kalp.studio](mailto:care.kalp.studio). Our dedicated development team will assist you in finding the best possible solution.