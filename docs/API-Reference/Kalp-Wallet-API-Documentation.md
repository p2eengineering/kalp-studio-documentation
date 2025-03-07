<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# **Kalp Wallet OpenAPI Reference**

## **General Usage**

Kalp Wallet OpenAPI provides an API that allows users to create and manage different types of wallets programmatically. The API supports the creation of self-custodial, MPC (Multi-Party Computation), and custodial wallets.

## **Request, Response & Error codes** 

### Request Payloads

The Kalp Wallet API supports the following types of request payloads:

-   **Form-Encoded**:  `Content-Type: application/x-www-form-urlencoded`
    
-   **Raw**
    
-   **Form Data**
    
-   **JSON**
    

### Responses

Each response payload is encoded into JSON and contains a result indicating success or an error message for failed or rejected requests.

### Error Codes

Status codes other than 200 indicate an issue with the request. Here are some common error codes:

### Auth Errors

-   Unauthorized: Un Authorized , Invalid Access Token (Error Code: 1001)
    
-   API Key Missing: auth Api Key Missing (Error Code: 1002)
    
-   Max OTP Resend Attempts Exceeded: max Otp Resend Attempts Exceeded (Error Code: 1003)
    
-   Invalid Phone Number: Please Enter Valid Phone Number (Error Code: 1004)
    
-   OTP Expired: The OTP you entered has expired. Please request a new OTP to proceed. (Error Code: 1005)
    
-   Invalid OTP: Please Enter Valid Otp (Error Code: 1006)
    
-   Unable to Generate API Key: Unable to genrate Api key (Error Code: 1007)
    

### Wallet Errors

-   Unsupported Blockchain Request: Invalid Request Blockchain Not Supported Yet (Error Code: 101001)
    
-   RPC Node Not Found: RPC Node for the blockchain not found (Error Code: 101002)
    
-   Wallet Address Not Found: wallet Address not found for Current user (Error Code: 101003)
    
-   Wallet Type Is Self Custodial: wallet Type Is Self Custodial (Error Code: 101004)
    
-   User Seed Phrase Mnemonics Mismatch: user Seed Phrase Mnemonics Mis Match (Error Code: 101005)
    
-   Unable to Fetch Blockchain Network: RPC Node for the blockchain not found (Error Code: 101006)
    
-   MPC Wallet User Shard Is Required: For Mpc Wallet User Shard Is Required , Pass User Shard and userIndentiity in Req Body (Error Code: 101007)
    
-   No User Hashed Shard Found In DB: no User Hashed Shard Found In DB , Please input correct user Shard or Indentifier (Error Code: 101008)
    
-   Self Custodial Wallet Seed Phrase Is Required: for Self Custodial Wallet Seed Phrase Is Required , Pass seed Phrase in Req Body (Error Code: 101009)
    
-   Mnemonics Is Expired: mnemonics/seedPhrase Expired , Kindly Follow Instructions within 10 min (Error Code: 101010)
    
-   Verify User Detail for MPC: for Mpc First Verfify User Detail from MPC Auth (Error Code: 101011)
    
-   Seed Phrase Generation Only for Self Custodial Wallet: seed Phrase Generation Can Be Only Done For Self Custodial Wallet (Error Code: 101012)
    
-   No Transaction ABI Data Found: No Transaction Abi Data Found (Error Code: 101013)
    
-   MPC Wallet Cannot Send Route Transaction: for Mpc Wallet Can Not Send Route Transaction (Error Code: 101014)
    
-   MPC Wallet Can Only Have User Shard: mpc Wallet Can Only Have User Shard (Error Code: 101015)
    
-   MPC Wallet Can Only Be Verified: mpc Wallet Can Only Be Verifed (Error Code: 101016)
    
-   Invalid API Key User: invalid Api Key ! Only Contract deployed User apiKey is vaild (Error Code: 101017)
    
-   Only Custodial Wallet Address Can Sign Transaction: only Custodial Wallet Address Can Sign Transaction through Generated Routes (Error Code: 101018)
    
-   Deployed Smart Contract Address Not Found in DB: deployed Smart Contract Address Not Found in Db (Error Code: 101019)
    
-   User Auth Credential Already Exists: The social Auth Credential you have entered is already associated with an existing wallet. Please use a different one create a new MPC wallet or log in to your existing wallet. (Error Code: 101020)
    
-   Invalid Credentials: Invalid credentials or access denied. Please check your credentials and try again. (Error Code: 101021).

### Authentication

Authentication is handled via API key middleware guards. The API key ensures that the request is from a valid user with the correct permissions.

### Steps to Authenticate

1.  **Obtain API Key**: Request an API key from the Kalp Wallet interface.
    
2.  **Include API Key in Request**: Use the API key in the headers of your API requests.
    

### Example Authentication Header

```typescript
Authorization: Bearer YOUR_API_KEY

```

## **FAQ**

### General FAQ

**Q1: What types of wallets can I create using the Kalp Wallet API?**  
A1: You can create self-custodial, MPC (Multi-Party Computation), and custodial wallets using the Kalp Wallet API.

**Q2: What formats are supported for request payloads?**  
A2: The Kalp Wallet API supports form-encoded (`Content-Type: application/x-www-form-urlencoded`), raw, form data, and JSON formats for request payloads.

**Q3: How are responses formatted?**  
A3: Each response payload is encoded into JSON and contains either a successful result or an error message for failed or rejected requests.

**Q4: How is authentication handled?**  
A4: Authentication is managed through API key middleware guards. The API key ensures that the request is from a valid user with the correct permissions.

**Q5: What should I do if I encounter an error code?**  
A5: If you encounter an error code, refer to the detailed list of authentication and wallet errors provided. Each error code includes a description to help you understand the issue and how to resolve it.

### Authentication FAQ

**Q6: What does the error "Un Authorized , Invalid Access Token" mean?**  
A6: This error (Error Code: 1001) means that the access token provided is invalid. Ensure you are using a valid and authorized access token.

**Q7: What should I do if I receive the "auth Api Key Missing" error?**  
A7: This error (Error Code: 1002) indicates that the API key is missing from your request. Ensure you include a valid API key in your request headers.

**Q8: What does "max Otp Resend Attempts Exceeded" mean?**  
A8: This error (Error Code: 1003) occurs when you have exceeded the maximum number of OTP resend attempts. Wait for some time before requesting a new OTP.

**Q9: Why am I getting the "Please Enter Valid Phone Number" error?**  
A9: This error (Error Code: 1004) indicates that the phone number entered is invalid. Ensure you enter a valid phone number.

**Q10: What does "The OTP you entered has expired" mean?**  
A10: This error (Error Code: 1005) means that the OTP you entered has expired. Request a new OTP to proceed.

**Q11: What should I do if I get the "Please Enter Valid Otp" error?**  
A11: This error (Error Code: 1006) indicates that the OTP entered is invalid. Ensure you enter the correct OTP sent to your phone or email.

**Q12: What does "Unable to generate API key" mean?**  
A12: This error (Error Code: 1007) means that there was an issue generating the API key. Try again later or contact support for assistance.

### Wallet FAQ

**Q13: What does the error "Invalid Request Blockchain Not Supported Yet" mean?**  
A13: This error (Error Code: 101001) indicates that the requested blockchain is not supported by Kalp Wallet. Ensure you are requesting a supported blockchain.

**Q14: Why am I getting the "RPC Node for the blockchain not found" error?**  
A14: This error (Error Code: 101002) means that the RPC node for the requested blockchain could not be found. Check your blockchain configuration.

**Q15: What does "wallet Address not found for Current user" mean?**  
A15: This error (Error Code: 101003) indicates that the wallet address for the current user could not be found. Ensure the wallet address is correct and exists.

**Q16: What should I do if I see the "wallet Type Is Self Custodial" error?**  
A16: This error (Error Code: 101004) means that the wallet type specified is self-custodial. Ensure you are handling the wallet type correctly.

**Q17: What does "user Seed Phrase Mnemonics Mis Match" mean?**  
A17: This error (Error Code: 101005) indicates that the user seed phrase mnemonics do not match. Ensure the seed phrase is entered correctly.

**Q18: Why am I getting the "RPC Node for the blockchain not found" error again?**  
A18: This error (Error Code: 101006) means the RPC node for the blockchain could not be fetched. Verify the blockchain network configuration.

**Q19: What does "For Mpc Wallet User Shard Is Required" mean?**  
A19: This error (Error Code: 101007) indicates that a user shard is required for MPC wallet creation. Pass the user shard and user identity in the request body.

**Q20: What should I do if I get the "no User Hashed Shard Found In DB" error?**  
A20: This error (Error Code: 101008) means that the user hashed shard could not be found in the database. Ensure you input the correct user shard or identifier.

**Q21: What does "for Self Custodial Wallet Seed Phrase Is Required" mean?**  
A21: This error (Error Code: 101009) indicates that a seed phrase is required for self-custodial wallet creation. Pass the seed phrase in the request body.

**Q22: What does "mnemonics/seedPhrase Expired" mean?**  
A22: This error (Error Code: 101010) means that the mnemonics or seed phrase has expired. Follow the instructions and complete the process within the specified time frame.

**Q23: What should I do if I see the "for Mpc First Verify User Detail" error?**  
A23: This error (Error Code: 101011) indicates that you need to verify user details from MPC Auth before proceeding. Complete the verification step.

**Q24: What does "seed Phrase Generation Can Be Only Done For Self Custodial Wallet" mean?**  
A24: This error (Error Code: 101012) indicates that seed phrase generation is only applicable for self-custodial wallets. Ensure you are using the correct wallet type.

**Q25: Why am I getting the "No Transaction Abi Data Found" error?**  
A25: This error (Error Code: 101013) means that no transaction ABI data could be found. Verify the transaction details.

**Q26: What does "for Mpc Wallet Can Not Send Route Transaction" mean?**  
A26: This error (Error Code: 101014) indicates that MPC wallets cannot send route transactions. Ensure the transaction type is supported.

**Q27: What should I do if I get the "mpc Wallet Can Only Have User Shard" error?**  
A27: This error (Error Code: 101015) means that MPC wallets can only have user shards. Verify the wallet configuration.

**Q28: What does "mpc Wallet Can Only Be Verified" mean?**  
A28: This error (Error Code: 101016) indicates that MPC wallets can only be verified. Complete the verification process.

**Q29: What does "invalid Api Key ! Only Contract deployed User apiKey is valid" mean?**  
A29: This error (Error Code: 101017) means that the API key is invalid. Only the API key of the user who deployed the contract is valid.

**Q30: Why am I getting the "only Custodial Wallet Address Can Sign Transaction through Generated Routes" error?**  
A30: This error (Error Code: 101018) means that only custodial wallet addresses can sign transactions through generated routes. Ensure you are using the correct wallet type.

**Q31: What does "deployed Smart Contract Address Not Found in DB" mean?**  
A31: This error (Error Code: 101019) indicates that the deployed smart contract address could not be found in the database. Verify the smart contract address.

**Q32: What should I do if I see the "user Auth Credential Already Exists" error?**  
A32: This error (Error Code: 101020) means that the social auth credential entered is already associated with an existing wallet. Use a different credential to create a new MPC wallet or log in to the existing wallet.

**Q33: Why am I getting the "Invalid credentials or access denied" error?**  
A33: This error (Error Code: 101021) indicates that the credentials are invalid or access is denied. Check your credentials and try again.

## **API Reference**

### 1. **Generate mnemonics**

#### API Method & URL

**Method** - POST

**URL** - https://wallet-api.kalp.studio/wallet/create-mnemonics

#### **Description**
This endpoint generates a new seed phrase for a self-custodial wallet. The seed phrase must be securely stored by the user, as it is essential for wallet recovery and access.

#### Header parameters

**apikey** 

A unique API key assigned to the user for authentication and authorization of API requests.

Example: `"31a057fa-a9eb-4527-b3df-b7a6f79fab6c"`

#### Body Parameters

**blockchain**

Specifies the blockchain on which the wallet will be created. Example values include ETH for Ethereum.

Example: `"ETH"`

**network**

Specifies the network of the blockchain to be used. Example values include SEPOLIA, which is a test network for Ethereum.

Example: `"SEPOLIA"`

**userId**

A unique identifier for the user requesting the wallet creation. This ID is used to associate the wallet with the user.

Example: `"31a057fa-a9eb-4527-b3df-b7a6f79fab6c"`

**walletType**

Specifies the type of wallet to be created. Example values include SELF_CUSTODIAL for a self-custodial wallet where the user controls the private keys.
Example: `"SELF_CUSTODIAL"`

#### Request Example 
~~~
{

"network": "SEPOLIA",

"blockchain": "ETH",

"walletType": "SELF_CUSTODIAL",

"userId": "31a057fa-a9eb-4527-b3df-b7a6f79fab6c"

}
~~~

#### Response Example

**Create seed phrase**
~~~
{
    "status": 200,
    "message": "success",
    "result": "lab narrow wheel picture plastic minimum cradle swear auto snow hover limit"
}
~~~

**Self Custodial** 
~~~
{
    "status": 200,
    "message": "success",
    "result": "key better reunion pact real soap cream fish basic crumble globe diagram"
}
~~~


### 2. **Create Wallet**

#### API Method & URL

**Method** - POST

**URL** - https://wallet-api.kalp.studio/wallet/create-wallet


#### **Description**

This endpoint allows users to create a new wallet. Users can choose between self-custodial, MPC, and custodial wallets. The request must include necessary details such as the wallet type and user information.


#### Header parameters

**apikey** 

A unique API key assigned to the user for authentication and authorization of API requests.

Example: `"31a057fa-a9eb-4527-b3df-b7a6f79fab6c"`

#### Body Parameters

**blockchain**

Specifies the blockchain on which the wallet will be created. Example values include `ETH` for Ethereum.

Example: `"ETH"`

**mnemonics**

A seed phrase used for generating a self-custodial wallet. This should be kept secure and confidential.

Example: `"draw double tape end sibling rug armed have feed dumb mail latin"`

**network**

Specifies the network of the blockchain to be used. Example values include `testnet`, which is a test network for blockchain.

Example: `"testnet "`

**walletType**

Specifies the type of wallet to be created. Example values include `SELF_CUSTODIAL` for a self-custodial wallet where the user controls the private keys.

Example: `"SELF_CUSTODIAL"`

#### Request example

Here update the network blockchain & wallet type as per your need

Following is the kalp MPC wallet request example
~~~
{

"network" : "TESTNET",

"blockchain" : "KALP",

"walletType" : "MPC",

// "mnemonic" : "badge dinner nephew version staff keen candy thank primary loop edge gun",

"userId" : "709d7259-5b09-4252-9fa9-2a1f1ddae5b8"

}
~~~

#### Response example

**Kalp custodial**

~~~
{
    "status": 200,
    "message": "success",
    "result": {
        "address": "e1fc14fa8faff3880395a65773db47b577fc04ca",
        "CSRcertificate": "-----BEGIN CERTIFICATE-----\nMIIDYTCCAwigAwIBAgIUbAt0PKD+xAHvMnFsrqBh4g1PGEQwCgYIKoZIzj0EAwIw\ngbIxCzAJBgNVBAYTAlVTMREwDwYDVQQIEwhEZWxhd2FyZTFQME4GA1UEBxNHUDJF\nIExBQlMgTExDICAxMDA3IE4gT3JhbmdlIFN0LiA0dGggRmxvb3IgU3RlIDEzODIg\nV2lsbWluZ3RvbiBVLlMgMTk4MDExETAPBgNVBAoTCE1BSSBMYWJzMQ8wDQYDVQQL\nEwZjbGllbnQxGjAYBgNVBAMTEW1haWxhYnMtaW50LWFkbWluMB4XDTI0MDUyNzEy\nMDcwMFoXDTI1MDgzMDEwMTQwMFowgb0xCzAJBgNVBAYTAklOMRYwFAYDVQQIEw1Z\nb3VyIFByb3ZpbmNlMRYwFAYDVQQHEw1Zb3VyIExvY2FsaXR5MRowGAYDVQQKExFZ\nb3VyIE9yZ2FuaXphdGlvbjEvMA0GA1UECxMGY2xpZW50MA4GA1UECxMHY2xpZW50\nczAOBgNVBAsTB21haWxhYnMxMTAvBgNVBAMTKGUxZmMxNGZhOGZhZmYzODgwMzk1\nYTY1NzczZGI0N2I1NzdmYzA0Y2EwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAAST\nb4iHSrR+17A0OUlHcuonrpGZ0shdOeu/vloVKsWCpVD9q0R9KIlXCd2kl3K44Pjo\nklJPcPy9kY9i6Hsax17eo4HuMIHrMA4GA1UdDwEB/wQEAwIHgDAMBgNVHRMBAf8E\nAjAAMB0GA1UdDgQWBBTfnTC78EeZiIyp3i06h01nKQw4+TAfBgNVHSMEGDAWgBQP\nomAYvecJRvp4yFWVdUYay/PaaTCBigYIKgMEBQYHCAEEfnsiYXR0cnMiOnsiaGYu\nQWZmaWxpYXRpb24iOiJtYWlsYWJzLmNsaWVudHMiLCJoZi5FbnJvbGxtZW50SUQi\nOiJlMWZjMTRmYThmYWZmMzg4MDM5NWE2NTc3M2RiNDdiNTc3ZmMwNGNhIiwiaGYu\nVHlwZSI6ImNsaWVudCJ9fTAKBggqhkjOPQQDAgNHADBEAiBVZH739bXWNLQP1js5\nnkexdg6lSzyix9Qi+GO85/cX4gIgcyeJE3jMMb/547/Sa5yMCEJnlZxWJmSa+V+O\ngcogayI=\n-----END CERTIFICATE-----\n",
        "publicKey": "-----BEGIN PUBLIC KEY-----\nMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEk2+Ih0q0ftewNDlJR3LqJ66RmdLIXTnrv75aFSrFgqVQ/atEfSiJVwndpJdyuOD46JJST3D8vZGPYuh7Gsde3g==\n-----END PUBLIC KEY-----\n"
    }
}
~~~

**ETH Custodial**

~~~
{
    "status": 200,
    "message": "success",
    "result": {
        "address": "0xa0a3367ef9A9f8A956B57AC77723538d302F2fbE",
        "balance": "0.0",
        "publicKey": "0x04b1b526984c10efc45568f153182677eaf7bf2b52446bd6e83f3e15a67ffddd2f95ba100128277cf7e7064b011cb78a4dd409cef29583521f0ee1c8d039367011"
    }
}
~~~

**ETH Self-Custodial**

~~~
{
    "status": 200,
    "message": "success",
    "result": {
        "address": "0xB9833da5f14F8E9D22e8BEB9a7a27c758827a8b9",
        "privateKey": "0xa7b5e77d3776b8f73390a1e32d6e9febabe2e7147c3eb554ef3368f3ae4054b0",
        "balance": "0.0",
        "publicKey": "0x0424b672e0080d09ffdad238ca34cb1c640a75deae9c5510ca14b1e1660544a5a82d543e30895b85014e25f7229a5ec67dd4a5b0e75092def27a330d6327092cd7"
    }
}
~~~

**Kalp Self-Custodial**

~~~
{
    "status": 200,
    "message": "success",
    "result": {
        "address": "77a1b6e7e250f5fe22082ace1e5ce88eadee1439",
        "CSRcertificate": "-----BEGIN CERTIFICATE-----\nMIIDYjCCAwigAwIBAgIUQuEY1t1KvtW8+GRWi5tu0+4z6O4wCgYIKoZIzj0EAwIw\ngbIxCzAJBgNVBAYTAlVTMREwDwYDVQQIEwhEZWxhd2FyZTFQME4GA1UEBxNHUDJF\nIExBQlMgTExDICAxMDA3IE4gT3JhbmdlIFN0LiA0dGggRmxvb3IgU3RlIDEzODIg\nV2lsbWluZ3RvbiBVLlMgMTk4MDExETAPBgNVBAoTCE1BSSBMYWJzMQ8wDQYDVQQL\nEwZjbGllbnQxGjAYBgNVBAMTEW1haWxhYnMtaW50LWFkbWluMB4XDTI0MDUyNzEy\nMDcwMFoXDTI1MDgzMDEwMTgwMFowgb0xCzAJBgNVBAYTAklOMRYwFAYDVQQIEw1Z\nb3VyIFByb3ZpbmNlMRYwFAYDVQQHEw1Zb3VyIExvY2FsaXR5MRowGAYDVQQKExFZ\nb3VyIE9yZ2FuaXphdGlvbjEvMA0GA1UECxMGY2xpZW50MA4GA1UECxMHY2xpZW50\nczAOBgNVBAsTB21haWxhYnMxMTAvBgNVBAMTKDc3YTFiNmU3ZTI1MGY1ZmUyMjA4\nMmFjZTFlNWNlODhlYWRlZTE0MzkwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAAQL\nh9oY2EMm5zUf8omsfsh8Vb0wZpPyKertfh9oNVPLK7ch10WKQbHg6cKQeVTKR2Oo\nDhM4mkpHwseyw01LIQBTo4HuMIHrMA4GA1UdDwEB/wQEAwIHgDAMBgNVHRMBAf8E\nAjAAMB0GA1UdDgQWBBQctJcjndzm3M0AMq6ymwACKGMgIzAfBgNVHSMEGDAWgBQP\nomAYvecJRvp4yFWVdUYay/PaaTCBigYIKgMEBQYHCAEEfnsiYXR0cnMiOnsiaGYu\nQWZmaWxpYXRpb24iOiJtYWlsYWJzLmNsaWVudHMiLCJoZi5FbnJvbGxtZW50SUQi\nOiI3N2ExYjZlN2UyNTBmNWZlMjIwODJhY2UxZTVjZTg4ZWFkZWUxNDM5IiwiaGYu\nVHlwZSI6ImNsaWVudCJ9fTAKBggqhkjOPQQDAgNIADBFAiEAjD5HuOVfEM7DNEjw\nW6EZMtWxFiy52lTjlLSXbzwDFoUCIA42NyhrMqk6lLP3mqdHciG1BEQE19M8TCWQ\nvri58dtJ\n-----END CERTIFICATE-----\n",
        "publicKey": "-----BEGIN PUBLIC KEY-----\nMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEC4faGNhDJuc1H/KJrH7IfFW9MGaT8inq7X4faDVTyyu3IddFikGx4OnCkHlUykdjqA4TOJpKR8LHssNNSyEAUw==\n-----END PUBLIC KEY-----\n",
        "pemPrivateKey": "-----BEGIN PRIVATE KEY-----\r\nMEECAQAwEwYHKoZIzj0CAQYIKoZIzj0DAQcEJzAlAgEBBCA5P45UoCw+EI4BCj55\r\n5MmHSUJXL99DTQH+h5ArrDjhYw==\r\n-----END PRIVATE KEY-----\r\n"
    }
}
~~~

**KALP MPC Wallet**

~~~
{
    "status": 200,
    "message": "success",
    "result": {
        "address": "57c1dcf7688ae0945de233e750d56c65d3108a16",
        "userShard": "CAFUVRQ4YmQjoBb0qxVbE/1pq4gHg/0jLsR7INzbhTWY7ar511s59ApwNBY6E+etdRuFEWogEpodInQyplLHA1IQ09+tzTXdcANVlueorsaQ4mbEyZuWH0Xg6pWigMZBzRK8AxIHGLXeG97A/Y3iCleSz7lJ0Hs3S07dxZ5Qh2BVuduV5pudLGuNtLCq85aQVizdajWyMejJ1bjJyQHs//TYW7zhLhbmeUjg1B72jFMOnHrQ6F9lJOLECzf3xKa55BMgbfWwCK7P4Go3XUBuTdSKWCUPKNn6+b0u6MoPd4/fgMCbrQ+iDcrVMGeRpWDSilnVZuZtpKAu7EdTdOjCbd1JygjtsdW3NkcUHQpR05nJrznBynVkx7x1YvrpvmD4BMXTbnWg/qGpQw8JWwruSFadAMG1x+JgGsV7Kp+UhIf4ig==",
        "CSRcertificate": "-----BEGIN CERTIFICATE-----\nMIIDYTCCAwigAwIBAgIUTqmH3QRGmHHf7UUs4AOiSqkTIxIwCgYIKoZIzj0EAwIw\ngbIxCzAJBgNVBAYTAlVTMREwDwYDVQQIEwhEZWxhd2FyZTFQME4GA1UEBxNHUDJF\nIExBQlMgTExDICAxMDA3IE4gT3JhbmdlIFN0LiA0dGggRmxvb3IgU3RlIDEzODIg\nV2lsbWluZ3RvbiBVLlMgMTk4MDExETAPBgNVBAoTCE1BSSBMYWJzMQ8wDQYDVQQL\nEwZjbGllbnQxGjAYBgNVBAMTEW1haWxhYnMtaW50LWFkbWluMB4XDTI0MDUyNzEy\nMDcwMFoXDTI1MDgzMDEwMjIwMFowgb0xCzAJBgNVBAYTAklOMRYwFAYDVQQIEw1Z\nb3VyIFByb3ZpbmNlMRYwFAYDVQQHEw1Zb3VyIExvY2FsaXR5MRowGAYDVQQKExFZ\nb3VyIE9yZ2FuaXphdGlvbjEvMA0GA1UECxMGY2xpZW50MA4GA1UECxMHY2xpZW50\nczAOBgNVBAsTB21haWxhYnMxMTAvBgNVBAMTKDU3YzFkY2Y3Njg4YWUwOTQ1ZGUy\nMzNlNzUwZDU2YzY1ZDMxMDhhMTYwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNCAATb\nCOH7H5rNoKMB+8cjMsYypzJxXRxW1souGpKbOikqmoqabzkpDapFPN4iZyJmNRZP\nJcvP4YTwA0kgalrgKMHKo4HuMIHrMA4GA1UdDwEB/wQEAwIHgDAMBgNVHRMBAf8E\nAjAAMB0GA1UdDgQWBBR3TN7Mn1nQ/RAAdaBvFIBkdmCujzAfBgNVHSMEGDAWgBQP\nomAYvecJRvp4yFWVdUYay/PaaTCBigYIKgMEBQYHCAEEfnsiYXR0cnMiOnsiaGYu\nQWZmaWxpYXRpb24iOiJtYWlsYWJzLmNsaWVudHMiLCJoZi5FbnJvbGxtZW50SUQi\nOiI1N2MxZGNmNzY4OGFlMDk0NWRlMjMzZTc1MGQ1NmM2NWQzMTA4YTE2IiwiaGYu\nVHlwZSI6ImNsaWVudCJ9fTAKBggqhkjOPQQDAgNHADBEAiAisX+8xMTr8ftiv/Nx\naNDHfAWBuu54G/FiK4cw2cG56AIgTHolExB6QaL+Vo9+Bmsns7WOlX6t7ydnnJu6\n2UJz0/c=\n-----END CERTIFICATE-----\n",
        "publicKey": "-----BEGIN PUBLIC KEY-----\nMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE2wjh+x+azaCjAfvHIzLGMqcycV0cVtbKLhqSmzopKpqKmm85KQ2qRTzeImciZjUWTyXLz+GE8ANJIGpa4CjByg==\n-----END PUBLIC KEY-----\n"
    }
}
~~~

**ETH MPC Wallet**

~~~
{
    "status": 200,
    "message": "success",
    "result": {
        "address": "0x65A0fA104d569Bc1f6955784C02bA0ca9c9Ee081",
        "userShard": "CAGAoT8lCi8X85CS9XUUsIRP7WnShfmKDc77WqTCMyn9ZWhJN+GvBFqGVk8dMvEQD0mWkUUzjhcTkdUs0ReYXLAIBao9Mr/i8LHxNgwupY5bEdaMmjSQMQG8yMKkf3WovYCsBWHpVMykueLaKxU/wYEC1ko0Rb/7e5BleY4ykPA+Kvf7lWyx4cCmZ9C/ma1qllw=",
        "balance": "0.0",
        "publicKey": "0x04eaa83117f36750f18f10c7118472f2dfef7ba148b5431a70148f15d316fa202c0f466bf54c49f0b38e788b90dfe424aeff6c578ec55c65ca22f1f9103d012481"
    }
}
~~~



### 3. **MPC O Auth Verify**

#### API Method & URL

**Method** - POST

**URL** - https://wallet-api.kalp.studio/auth/google/verify

#### **Description**
This endpoint is used to verify user details through the MPC (Multi-Party Computation) OAuth process. It ensures that the user's identity and permissions are validated before proceeding with wallet creation or other sensitive operations.

#### Header parameters

**apikey** 

A unique API key assigned to the user for authentication and authorization of API requests.

Example: `"31a057fa-a9eb-4527-b3df-b7a6f79fab6c"`


#### Body Parameters

**subId**

The subscription ID associated with the MPC O Auth verification request.

Example: `"sdjdafnaknffdafdafdafdafda"`

**userId**

The unique identifier for the user making the MPC O Auth verification request.

Example: `"9c1d4102-650f-47f5-bc34-222960cdad7d"`

#### Request Example

~~~
{

"subId" : "sdjjkhgjkgjjfdafnaknffdafdafddgdgdgdafdafda",

"userId" : "ee818885-3962-4018-91cd-67c92070ce5b",

"type" : "verify"

}
~~~

#### Response Example

~~~
{
    "status": 200,
    "message": "success",
    "result": {
        "status": {
            "success": true,
            "message": "o_auth is verified"
        }
    }
}
~~~


### 4. **Send email OTP**

#### API Method & URL

**Method** - POST

**URL** - https://wallet-api.kalp.studio/auth/email/send

#### **Description**

This endpoint sends a One-Time Password (OTP) to the specified email address. The OTP is used for verifying the user's email during the registration or authentication process.

#### Header parameters

**apikey** 

A unique API key assigned to the user for authentication and authorization of API requests.

Example: `"31a057fa-a9eb-4527-b3df-b7a6f79fab6c"`


#### Body parameters

**email**

The email address to which the OTP will be sent.

Example: `"jayantk7722@gmail.com"`

**userId**

The unique identifier for the user requesting the OTP.

Example: `"709d7259-5b09-4252-9fa9-2a1f1ddae5b6"`

**otp**

The OTP code sent to the user's email that needs to be verified.

Example: `"998707"`


#### Request Example

~~~

{

"email" : "jayantk7722@gmail.com",

"userId" : "709d7259-5b09-4252-9fa9-2a1f1ddae5b6",

"type" : "verify"

}
~~~

#### Response Example

**Send email OTP**

~~~
{
    "status": 200,
    "message": "success",
    "result": {
        "status": {
            "success": true,
            "message": "Email OTP is sent"
        }
    }
}
~~~

**MPC Wallet** 

~~~
{
    "status": 200,
    "message": "success",
    "result": {
        "status": {
            "success": true,
            "message": "Email OTP is sent"
        }
    }
}
~~~


### 5. **Verify email OTP**

#### API Method & URL

**Method** - POST

**URL** - https://wallet-api.kalp.studio/auth/email/verify

#### **Description**

This endpoint verifies the OTP that was sent to the user's email. It ensures that the email address is valid and belongs to the user, completing the email verification process.

#### Header parameters

**apikey** 

A unique API key assigned to the user for authentication and authorization of API requests.

Example: `"31a057fa-a9eb-4527-b3df-b7a6f79fab6c"`

#### Body parameters

**email**

The email address to which the OTP was sent and is being verified.

Example: `"jayantk7722@gmail.com"`

**otp**

The OTP code sent to the user's email that needs to be verified.

Example: `"913707"`

**userId**

The unique identifier for the user whose email is being verified.

Example: `"709d7259-5b09-4252-9fa9-2a1f1ddae5b6"`

#### Request Example

~~~
{

"email" : "jayantk7722@gmail.com",

"otp" : "5881",

"userId" : "709d7259-5b09-4252-9fa9-2a1f1ddae5b6",

"type" : "verify"

}

~~~

#### Response Example

**Verify Email OTP**
~~~

{
    "status": 200,
    "message": "success",
    "result": {
        "status": {
            "success": true,
            "message": "Email OTP is verified"
        }
    }
}

~~~

### 6. **Send phone SMS**

#### API Method & URL

**Method** - POST

**URL** - https://wallet-api.kalp.studio/auth/phone/send

#### **Description**

This endpoint sends a One-Time Password (OTP) via SMS to the specified phone number. The OTP is used for verifying the user's phone number during the registration or authentication process.

#### Header parameters

**apikey** 

A unique API key assigned to the user for authentication and authorization of API requests.

Example: `"31a057fa-a9eb-4527-b3df-b7a6f79fab6c"`

#### Body parameters

**countryCode**

The country code for the phone number, without the '+' sign.

Example: `"91"`

**phone**

The phone number to which the SMS will be sent.

Example: `"7011094328"`

**userId**

The unique identifier for the user requesting the SMS.

Example: `"aac40ea5-8218-4634-8a85-9446236d47ce"`

#### Request Example

~~~
{

"countryCode": "91",

"phone": "7011094328",

"userId": "aac40ea5-8218-4634-8a85-9446236d47ce"

}
~~~

#### Response Example

~~~
{
    "status": 200,
    "message": "success",
    "result": {
        "status": {
            "success": true,
            "message": "Phone OTP is sent"
        }
    }
}
~~~

### 7. **Verify phone OTP**

#### API Method & URL

**Method** - POST

**URL** - https://wallet-api.kalp.studio/auth/phone/verify

#### **Description**

This endpoint verifies the OTP that was sent to the user's phone number via SMS. It ensures that the phone number is valid and belongs to the user, completing the phone verification process.

#### Header parameters

**apikey** 

A unique API key assigned to the user for authentication and authorization of API requests.

Example: `"31a057fa-a9eb-4527-b3df-b7a6f79fab6c"`

#### Body parameters


**countryCode**

The country code for the phone number, without the '+' sign.

Example: `"91"`

**otp**

The OTP code sent to the user's phone that needs to be verified.

Example: `"319239"`

**phone**

The phone number to which the OTP was sent and is being verified.

Example: `"7011094328"`

**userId**

The unique identifier for the user whose phone number is being verified.

Example: `"aac40ea5-8218-4634-8a85-9446236d47ce"`


#### Request Example

~~~
{
    "countryCode": "91",
    "phone": "7011094328",
    "otp" : "0917",
    "userId": "aac40ea5-8218-4634-8a85-944665756d47ce",
     "type" : "verify"
}
~~~

#### Response Example

~~~
{
    "status": 200,
    "message": "success",
    "result": {
        "status": {
            "success": true,
            "message": "Phone OTP is verified"
        }
    }
}
~~~

### 8. **MPC Verify**

#### API Method & URL

**Method** - POST

**URL** - https://wallet-api.kalp.studio/auth/mpc/verify

#### **Description**

This endpoint verifies user details necessary for MPC (Multi-Party Computation) wallet operations. It ensures that the user's identity and permissions are validated, enabling secure and authorized interactions with the MPC wallet.


#### Header parameters

**apikey** 

A unique API key assigned to the user for authentication and authorization of API requests.

Example: `"31a057fa-a9eb-4527-b3df-b7a6f79fab6c"`

#### Body parameters




**isInternalWallet**

A flag indicating whether the wallet is an internal wallet (true) or an external wallet (false).

Example: `false`

**userId**

The unique identifier for the user requesting the MPC verification.

Example: `"e4ccf0d3-5db9-4d65-a8dc-d48a2611781a"`

**userIndentifier**

A unique identifier associated with the user for the MPC verification process.

Example: `"sdjdafnaknffddeafdafdafdafda"`


#### Request Example

~~~
{

"userIndentifier" : "sdjdafnaknffddeafdafdafdafda",

  

"userId": "e4ccf0d3-5db9-4d65-a8dc-d48a2611781a",

  

"isInternalWallet" : false

}
~~~

#### Response Example

~~~
{
    "status": 200,
    "message": "success",
    "result": {
        "status": {
            "success": true,
            "userShard": "CAENX3j7ccEeg25p9GfxGaIe/UQFcg1NdIHGEhYLQViU4cxTWsF6FE+Ckpd0xUKksEozaewYRUAlDuhcATkRg8MV1wDl8eM/P3oB78spEBJab6Z4ZOlE0ZEtkcSISXEU6Fzvl/tNG3TalNGevlyaVTJgD//3uVUhh0z/rA7o7GtpPR5Aw9a4dxJJnqWryFhrsFM=",
            "userIndentifier": "sdjdafnaknffddeafdafdafdafda",
            "AuthType": "GOOGLE"
        }
    }
}
~~~

### 9. **Send Contract Deploy Request**

#### API Method & URL

**Method** - POST

**URL** - https://wallet-api.kalp.studio/wallet/send-contract-deploy-request


#### **Description**

This API endpoint is used to deploy a smart contract to a specified blockchain network. It accepts the contract file and deployment details as input parameters.

#### Header parameters

**apikey** 

A unique API key assigned to the user for authentication and authorization of API requests.

Example: `"31a057fa-a9eb-4527-b3df-b7a6f79fab6c"`

**contentype**

Specifies the content type

Example: `"multipart/form-data"`

#### Body parameters


**blockchain**

The blockchain network to deploy the contract on (e.g., `POLY`, `ETH`).

**address**

The wallet address used for deploying the contract.

**solFile**

The Solidity file containing the smart contract code to be deployed.

**userShard**

A unique shard identifier for the user.

**userIdentity**

An optional identity string for the user.

#### Request Example

~~~
"Authorization: Bearer YOUR_ACCESS_TOKEN" 
"Content-Type: multipart/form-data" 
"blockchain=POLY"
"address=0xb4295b46DA1d9460419a1487b838CBA..."  "solFile=@MultiContractFunc.sol" "userShard=CAG26qxJo/WnzfqI8POPeEILG4ieRyUm..." "userIdentity=sdjdafnaknfffdafdafdafda"

~~~

#### Response Example

~~~

{
    "status": 200,
    "message": "success",
    "result": {
        "blockchain": "POLY",
        "transactionType": "CONTRACT_DEPLOYMENT",
        "fromAddress": "0xb4295b46DA1d9460419a1487b838CB776b5B2068",
        "toAddress": "0x240fADAdD962171E7633Fa4EE4b0da5E0Ea0529A",
        "transactionHash": "0xd1aecffc30b47d5a5e3807440783f597f55325ee7161242c1f4f6581825dc8a4",
        "blockchainUrl": "https://www.oklink.com/amoy/tx/0xd1aecffc30b47d5a5e3807440783f597f55325ee7161242c1f4f6581825dc8a4",
        "network": "AMOY",
        "status": "COMPLETED",
        "gasUsed": 407396,
        "gasPrice": 25.000000015,
        "contractAddress": "0x240fADAdD962171E7633Fa4EE4b0da5E0Ea0529A",
        "contractName": "MultiFunctionContract"
    }
}

~~~

## Feedback

We value your feedback and encourage you to share any suggestions or report any issues you encounter, Raise a ticket at - [**care@kalp.studio**](https://care.kalp.studio/support/home).
