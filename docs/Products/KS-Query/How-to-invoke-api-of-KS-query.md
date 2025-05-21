<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>

<link  href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap"  rel="stylesheet">  <link  rel="stylesheet"  href="https://fonts.googleapis.com/icon?family=Material+Icons">

# How to Invoke APIs of KS Query

The **KS Query API** provides a suite of endpoints to interact with blockchain data, such as retrieving smart contract details, transactions, and block information. Below is a step-by-step guide to invoking these APIs effectively.

---

## Step 1: Copy the Desired Endpoint

1. Open the **All APIs** section in the KS Query Console.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/3.png)

2. Locate the specific endpoint you want to use. For instance:

    https://dev-ks-analytics-api.p2eppl.com/analytics/chaincode

3. Click on the copy icon next to the endpoint to copy its URL.

---

## Step 2: Check Parameters

1. Click the **Check Params** button next to the endpoint you selected.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/7.png)

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/8.png)

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Query+updated+1/9.png)

2. Gather the required details:
- **Params**: Retrieve the headers and query parameters related with API
- **Blockchain**: Retrieve the blockchain name from the **Blockchain & Network** tab (e.g., Ethereum or Kalp).
- **Network**: Retrieve the network name from the same tab (e.g., `devnet`).
- **API Key**: Select an active API key from the **API Key Generation** tab.

4. Optionally, explore and configure **Search Parameters**:
- `smartContractName`: The name of the smart contract to filter the results (optional).
- `from` and `to`:  formatted start and end dates for filtering (optional).

---

## Step 3: Use the Endpoint in Postman

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/image+%289%29.png)

1. Open **Postman** and create a new GET request.
2. Paste the copied endpoint URL into the request URL field.
3. Add the required **Headers** to the request:
- `network`: Specify the network name (e.g., `devnet`).
- `blockchain`: Specify the blockchain name (e.g., `kalp`).
- `api-key`: Provide the active API key retrieved from the KS Query console.

### Example Header Configuration:

| Key         | Value             |
|-------------|-------------------|
| `network`   | `devnet`          |
| `blockchain`| `kalp`            |
| `api-key`   | `your-api-key`    |

4. Click **Send** in Postman to execute the API request and receive the response.

---

## Conclusion

Using the KS Query APIs  process that allows you to harness blockchain data for your applications. By carefully setting up your API requests in tools like Postman, you can seamlessly integrate these APIs into your workflows. Follow these steps to fetch data dynamically and build powerful blockchain-based solutions.