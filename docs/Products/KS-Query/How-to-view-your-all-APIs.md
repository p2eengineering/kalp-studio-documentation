<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>

<link  href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap"  rel="stylesheet">  <link  rel="stylesheet"  href="https://fonts.googleapis.com/icon?family=Material+Icons">

# How to View All APIs in KS Query

!!! Tip
   
    To proceed with the flow, one must first select the Blockchain and network, then create or select an active API authentication key, and finally retrieve all APIs.

!!! Info
   
    Users can currently select only the KALP DLT chain and the Test Net network. Support for other options, such as Ethereum and Binance, will be introduced in upcoming releases.

The KS Query platform allows users to easily access and explore various APIs. Here’s a step-by-step guide to viewing all available APIs in KS Query:

----------

## Step 1: Navigate to the Dashboard

1. Log into Kalp Studio platform (https://accounts.kalp.studio/login).


2. Log in to your account using your credentials. If you don’t have an account, sign up to create one.
  

3. Once logged in, you’ll be redirected to the **Dashboard**, where you can explore various products and features.

  

4. From the **Dashboard**, scroll down to the **Our Products** section.

  

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query/11.png)

  

5.Find **KS Query** and click **Explore** under KS Query in the **Our Products** section to proceed.

-   Navigate to the **Dashboard** section.
-   The Dashboard provides a summary of your API usage and subscription details.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query/24.png)

----------

## **Step 2: Go to the "All APIs" Section**

KS Query allows users to efficiently view and interact with all APIs for blockchain operations, including details about **Smart Contracts**, **Blocks**, **Transactions**, and the **Network List**.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/1.png)



### 1. Navigate to the "All APIs" Section
- Open the KS Query dashboard and click on the **All APIs** option from the left sidebar.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/2.png)


### 2. Overview of Total API Hits
- The total number of API hits is displayed prominently at the top, providing insights into the API usage statistics.

### 3. Browse API Categories
- Below the API hits section, you will find tabs for different API categories. Click on the tabs to view APIs for:
  - **Smart Contracts**: APIs related to managing and querying smart contracts.
![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/3.png)

  - **Blocks**: APIs to retrieve block-related data from the blockchain.
![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/4.png)

  - **Transactions**: APIs for fetching transaction details and history.
![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/5.png)

  - **Network List**: APIs that list supported blockchain networks and configurations.
![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/6.png)

### 4. Check Parameters Details of API 

Click on the **Check Params** to view details of  Particular Smart contract, Blocks, Networks or Network List. 

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/2.png)


### 5. API Route Details


####  **Params**
The `Params` tab provides header and query parameters required for API requests.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/7.png)


##### Header Parameters
| Name        | Type   | Description                            |
|-------------|--------|----------------------------------------|
| `network`   | header | Network name (required)               |
| `blockchain`| header | Blockchain name (required)            |
| `api-key`   | header | API key for authentication (required) |

##### Search Parameters
| Name                 | Type   | Description                                            |
|----------------------|--------|--------------------------------------------------------|
| `smartContractName`  | query  | The name of the smart contract to filter by (optional) |
| `from`               | query  | Start date for filtering (optional, ISO 8601 date)    |
| `to`                 | query  | End date for filtering (optional, ISO 8601 date)      |

---

####  **Blockchain & Network**
The `Blockchain & Network` tab lists available blockchain networks supported by KS Query.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/8.png)


##### Available Networks
| Name       | Network | Blockchain |
|------------|---------|------------|
| `KALP DLT` | DEVNET  | KALP       |

---

#### **API Auth Key**
The `API Auth Key` tab displays the keys created for accessing APIs.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/9.png)


##### Generated Keys
| Key Name    | API Auth Key                          |
|-------------|---------------------------------------|
| `testapikey`| `9e48fec58f60807...4d1`              |

> **Tip:** You can copy the API key by clicking the copy icon beside the key.

---

#### Conclusion 

The Kalp studio Query feature provides a comprehensive and user-friendly interface for accessing blockchain data through APIs. With well-organized features like Routes Detail, users can easily configure requests using clearly defined parameters, explore supported blockchain networks, and securely manage API authentication keys. The intuitive design of the dashboard and its streamlined navigation ensure seamless user experience for developers, enabling quick integration and efficient data retrieval. KS Query empowers developers with the tools needed to build robust blockchain applications, making it an indispensable resource for blockchain-based projects.





---


!!! Note

    If you encounter any issues related to Kalp Studio, please raise a support ticket at [care.kalp.studio](mailto:care.kalp.studio). Our dedicated development team will assist you in finding the best possible solution.