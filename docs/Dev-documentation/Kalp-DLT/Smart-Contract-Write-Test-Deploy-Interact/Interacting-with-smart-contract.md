<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">



# Interacting with smart contract

### Interacting with Your Smart Contract

Establish a connection to the relevant blockchain network, enabling your application to interact with the deployed smart contracts. To establish connection to the blockchain network click on API gateway and see the deployed smart contract list.

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252F41oNtUEB9pHNhmjHIBzi%252Fimage.png%3Falt%3Dmedia%26token%3D29a067ab-7860-4e08-b387-b1b4a8f0493e&width=768&dpr=4&quality=100&sign=aed9de5&sv=1)

Click on the genearate endoints of the required smart contract which you want to connect with blockchain.

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FBM738DPTG7KLUUE7MO7L%252Fimage.png%3Falt%3Dmedia%26token%3Dddc7b577-8ec7-4b5a-a8c8-6580bcefb009&width=768&dpr=4&quality=100&sign=ed091bb7&sv=1)

Once endpoints are generated kalp studio will show you the API endponts functionalities related to smart contract. Kalp Studio automatically generates API endpoints that directly map to the functionalities of your smart contracts. These endpoints simplify integration by providing a well-defined interface for your front-end application to interact with the underlying smart contract logic.
    
![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252Fb9kpxfohU6l5swc3EO7t%252Fimage.png%3Falt%3Dmedia%26token%3Db190fcc9-7b2b-4907-ae32-173ceff98570&width=768&dpr=4&quality=100&sign=fdeb5685&sv=1)

### **Steps to Deploy and test the smart contract API endpoints:**

-  **Deployment of Smart Contract through Kalp Studio:**  Utilize the  **generated API endpoints**  directly within your front-end application (e.g., React.js, Next.js). This approach seamlessly integrates smart contract functionalities into your user interface, enabling dynamic interactions and data retrieval.

!!! Help 
    
    **Useful Links** 

    - [How to deploy a Smart Contract?](https://doc.kalp.studio/Getting-started/Kalp-Instant-Deployer/How-to-Deploy-a-Smart-Contract-on-Kalp-Studio/)

    - [How Can I Perform Transactions using API Endpoints?](https://doc.kalp.studio/Getting-started/API-Gateway/How-to-generate-API-endpoints/)

-   **Checking and Testing API Endpoints:**  Employ  **Postman**, a popular API testing tool, to send requests to the generated API endpoints. This method facilitates individual function testing, allowing you to verify their behavior and outputs in a controlled environment before integrating them into your front-end application.

### Postman Testing for Kalp Smart Contract API Endpoints

Following successful smart contract deployment and API endpoint generation within Kalp Studio, delve into the essential steps for testing these endpoints using Postman:

1 .  **Reading from the Smart Contract**

Kalp Studio enables efficient data retrieval from deployed smart contracts using  **read-only methods**. These methods allow your application to query the blockchain ledger without modifying its state.

**Example:**  To retrieve a user's account balance, you would invoke the  `ClientAccountBalance`  function through the generated API endpoint. This function would fetch the relevant data from the ledger and return it to your application.

By leveraging read-only methods, you can access crucial information from the blockchain without altering its state, ensuring data integrity and facilitating various application functionalities.

![](https://docs.kalp.studio/~gitbook/image?url=https:%2F%2F1878384301-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FzAA5Z6u1ZyGAxXbYfExA%252Fuploads%252FNATG3RRR7caPNDnYHXR7%252Fimage.png%3Falt=media%26token=6d668021-fdbd-4411-a2c8-e3f386942e0c&width=768&dpr=4&quality=100&sign=b76bc179a9ccf97d5e05eb20111a1800b0b5710b06a4e37f9f8bcde2fedf8c3d)

2 .  **Writing to the Smart Contract**

Kalp Studio empowers developers to perform  **write operations**, which involve modifying the state of the blockchain ledger through smart contract interactions. These operations typically involve sending transactions to specific contract functions provided by the Kalp SDK.

**Example:**  To transfer tokens, you would utilize the appropriate function (e.g.,  `Transfer`) through the generated API endpoint. This function would initiate a transaction on the blockchain, deducting tokens from the sender's account and crediting them to the recipient's account.

![](https://docs.kalp.studio/~gitbook/image?url=https:%2F%2F1878384301-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252FzAA5Z6u1ZyGAxXbYfExA%252Fuploads%252F1fBniQn95GWxLjvZZWx6%252Fimage.png%3Falt=media%26token=83f316de-10ef-493d-ad30-c90c3c1a65e1&width=768&dpr=4&quality=100&sign=ef568bc9a851d7f8b9d061d290f6e747b2cde5283aa36d080a5915ee7f93e2aa)

3 .  **Transaction Management:**  With the Kalp SDK, developers can efficiently manage transactions on the blockchain network. It provides functions for submitting transactions, querying transaction information, and retrieving transaction history. This simplifies the process of interacting with the blockchain and ensures the integrity of transactional operations.

**Example:**  All the Functions provided as:  `PutStateWithKYC, DelStateWithoutKYC, DelStateWithKYC, GetState, GetTxID, GetChannelD, SetEvent, GetUserID.`

### Conclusion

You're now ready to begin your journey as a Kalp blockchain developer. Experiment with different types of smart contracts, explore the functionalities offered by the Kalp SDK, and start building innovative DApps on the Kalp blockchain.

!!! Note
    If you encounter any issues during development related to Kalp Studio, please raise a support ticket at [care.kalp.studio](mailto:care.kalp.studio). Our dedicated development team will assist you in finding the best possible solution.