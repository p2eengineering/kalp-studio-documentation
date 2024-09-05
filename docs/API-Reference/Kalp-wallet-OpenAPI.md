<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>

<link  href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap"  rel="stylesheet">  <link  rel="stylesheet"  href="https://fonts.googleapis.com/icon?family=Material+Icons">

  

# Kalp Wallet Open-API Documentation

  

## General Usage

  

Kalp Wallet OpenAPI provides an API that allows users to create and manage different types of wallets programmatically. The API supports the creation of self-custodial, MPC (Multi-Party Computation), and custodial wallets.

  

## Request, Response & Error codes

  

### Request Payloads

  

The Kalp Wallet API supports the following types of request payloads:

  

-  **Form-Encoded**: `Content-Type: application/x-www-form-urlencoded`

-  **Raw**

-  **Form Data**

-  **JSON**

  

### Responses

  

Each response payload is encoded into JSON and contains a result indicating success or an error message for failed or rejected requests.

  

### Error Codes

  

Status codes other than 200 indicate an issue with the request. Here are some common error codes:

  

#### Auth Errors

  

- Unauthorized: Un Authorized , Invalid Access Token (Error Code: 1001)

- API Key Missing: auth Api Key Missing (Error Code: 1002)

- Max OTP Resend Attempts Exceeded: max Otp Resend Attempts Exceeded (Error Code: 1003)

- Invalid Phone Number: Please Enter Valid Phone Number (Error Code: 1004)

- OTP Expired: The OTP you entered has expired. Please request a new OTP to proceed. (Error Code: 1005)

- Invalid OTP: Please Enter Valid Otp (Error Code: 1006)

- Unable to Generate API Key: Unable to genrate Api key (Error Code: 1007)

  

#### Wallet Errors

  

- Unsupported Blockchain Request: Invalid Request Blockchain Not Supported Yet (Error Code: 101001)

- RPC Node Not Found: RPC Node for the blockchain not found (Error Code: 101002)

- Wallet Address Not Found: wallet Address not found for Current user (Error Code: 101003)

- Wallet Type Is Self Custodial: wallet Type Is Self Custodial (Error Code: 101004)

- User Seed Phrase Mnemonics Mismatch: user Seed Phrase Mnemonics Mis Match (Error Code: 101005)

- Unable to Fetch Blockchain Network: RPC Node for the blockchain not found (Error Code: 101006)

- MPC Wallet User Shard Is Required: For Mpc Wallet User Shard Is Required , Pass User Shard and userIndentiity in Req Body (Error Code: 101007)

- No User Hashed Shard Found In DB: no User Hashed Shard Found In DB , Please input correct user Shard or Indentifier (Error Code: 101008)

- Self Custodial Wallet Seed Phrase Is Required: for Self Custodial Wallet Seed Phrase Is Required , Pass seed Phrase in Req Body (Error Code: 101009)

- Mnemonics Is Expired: mnemonics/seedPhrase Expired , Kindly Follow Instructions within 10 min (Error Code: 101010)

- Verify User Detail for MPC: for Mpc First Verfify User Detail from MPC Auth (Error Code: 101011)

- Seed Phrase Generation Only for Self Custodial Wallet: seed Phrase Generation Can Be Only Done For Self Custodial Wallet (Error Code: 101012)

- No Transaction ABI Data Found: No Transaction Abi Data Found (Error Code: 101013)

- MPC Wallet Cannot Send Route Transaction: for Mpc Wallet Can Not Send Route Transaction (Error Code: 101014)

- MPC Wallet Can Only Have User Shard: mpc Wallet Can Only Have User Shard (Error Code: 101015)

- MPC Wallet Can Only Be Verified: mpc Wallet Can Only Be Verifed (Error Code: 101016)

- Invalid API Key User: invalid Api Key ! Only Contract deployed User apiKey is vaild (Error Code: 101017)

- Only Custodial Wallet Address Can Sign Transaction: only Custodial Wallet Address Can Sign Transaction through Generated Routes (Error Code: 101018)

- Deployed Smart Contract Address Not Found in DB: deployed Smart Contract Address Not Found in Db (Error Code: 101019)

- User Auth Credential Already Exists: The social Auth Credential you have entered is already associated with an existing wallet. Please use a different one create a new MPC wallet or log in to your existing wallet. (Error Code: 101020)

- Invalid Credentials: Invalid credentials or access denied. Please check your credentials and try again. (Error Code: 101021).

  

## Authentication

  

Authentication is handled via API key middleware guards. The API key ensures that the request is from a valid user with the correct permissions.

  

### Steps to Authenticate

  

1.**Obtain API Key**: Request an API key from the Kalp Wallet interface.

Here are the steps to get the API key from the console

1. Log in to dashboard and visit the API key generation.
2. Click on Create API Auth Key

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FzGC603zolGP1oPu3CqK7%252FAPI%2520Key%25201.png%3Falt%3Dmedia%26token%3Df2ab23e8-9f3d-4cd1-bb1a-075a28d1848b&width=768&dpr=4&quality=100&sign=5af323f5&sv=1)

3. Enter your key name & key description and proceed with click now.

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FcvTE28X17uCdk6USZQgK%252FAPI%2520key%25202.png%3Falt%3Dmedia%26token%3D0dba291a-891c-4b97-b681-a8ff6c6a4695&width=768&dpr=4&quality=100&sign=6b74a6e7&sv=1)

4. Once proceed, Your API Auth key has been generated.

![](https://docs.kalp.studio/~gitbook/image?url=https%3A%2F%2F1148605496-files.gitbook.io%2F%7E%2Ffiles%2Fv0%2Fb%2Fgitbook-x-prod.appspot.com%2Fo%2Fspaces%252F4gkv2XhY4CmWY6Vp0djW%252Fuploads%252FXDnFFksMJOhZGBIn3uyH%252FAPI%2520Key%25203.png%3Falt%3Dmedia%26token%3D298de2ee-1020-4bd0-ab86-61f196de7f20&width=768&dpr=4&quality=100&sign=1c8dddcb&sv=1)

2.**Include API Key in Request**: Use the API key in the headers of your API requests.

### Example Authentication Header

  

```curl
Authorization: BEARER_YOUR_API_KEY
```

## FAQ

  

### General FAQ

  

**Q1: What types of wallets can I create using the Kalp Wallet API?** A1: You can create self-custodial, MPC (Multi-Party Computation), and custodial wallets using the Kalp Wallet API.

  

**Q2: What formats are supported for request payloads?** A2: The Kalp Wallet API supports form-encoded (`Content-Type: application/x-www-form-urlencoded`), raw, form data, and JSON formats for request payloads.

  

**Q3: How are responses formatted?** A3: Each response payload is encoded into JSON and contains either a successful result or an error message for failed or rejected requests.

  

**Q4: How is authentication handled?** A4: Authentication is managed through API key middleware guards. The API key ensures that the request is from a valid user with the correct permissions.

  

**Q5: What should I do if I encounter an error code?** A5: If you encounter an error code, refer to the detailed list of authentication and wallet errors provided. Each error code includes a description to help you understand the issue and how to resolve it.

  

### Authentication FAQ

  

**Q6: What does the error "Un Authorized , Invalid Access Token" mean?** A6: This error (Error Code: 1001) means that the access token provided is invalid. Ensure you are using a valid and authorized access token.

  

**Q7: What should I do if I receive the "auth Api Key Missing" error?** A7: This error (Error Code: 1002) indicates that the API key is missing from your request. Ensure you include a valid API key in your request headers.

  

**Q8: What does "max Otp Resend Attempts Exceeded" mean?** A8: This error (Error Code: 1003) occurs when you have exceeded the maximum number of OTP resend attempts. Wait for some time before requesting a new OTP.

  

**Q9: Why am I getting the "Please Enter Valid Phone Number" error?** A9: This error (Error Code: 1004) indicates that the phone number entered is invalid. Ensure you enter a valid phone number.

  

**Q10: What does "The OTP you entered has expired" mean?** A10: This error (Error Code: 1005) means that the OTP you entered has expired. Request a new OTP to proceed.

  

**Q11: What should I do if I get the "Please Enter Valid Otp" error?** A11: This error (Error Code: 1006) indicates that the OTP entered is invalid. Ensure you enter the correct OTP sent to your phone or email.

  

**Q12: What does "Unable to generate API key" mean?** A12: This error (Error Code: 1007) means that there was an issue generating the API key. Try again later or contact support for assistance.

  

### Wallet FAQ

  

**Q13: What does the error "Invalid Request Blockchain Not Supported Yet" mean?** A13: This error (Error Code: 101001) indicates that the requested blockchain is not supported by Kalp Wallet. Ensure you are requesting a supported blockchain.

  

**Q14: Why am I getting the "RPC Node for the blockchain not found" error?** A14: This error (Error Code: 101002) means that the RPC node for the requested blockchain could not be found. Check your blockchain configuration.

  

**Q15: What does "wallet Address not found for Current user" mean?** A15: This error (Error Code: 101003) indicates that the wallet address for the current user could not be found. Ensure the wallet address is correct and exists.

  

**Q16: What should I do if I see the "wallet Type Is Self Custodial" error?** A16: This error (Error Code: 101004) means that the wallet type specified is self-custodial. Ensure you are handling the wallet type correctly.

  

**Q17: What does "user Seed Phrase Mnemonics Mis Match" mean?** A17: This error (Error Code: 101005) indicates that the user seed phrase mnemonics do not match. Ensure the seed phrase is entered correctly.

  

**Q18: Why am I getting the "RPC Node for the blockchain not found" error again?** A18: This error (Error Code: 101006) means the RPC node for the blockchain could not be fetched. Verify the blockchain network configuration.

  

**Q19: What does "For Mpc Wallet User Shard Is Required" mean?** A19: This error (Error Code: 101007) indicates that a user shard is required for MPC wallet creation. Pass the user shard and user identity in the request body.

  

**Q20: What should I do if I get the "no User Hashed Shard Found In DB" error?** A20: This error (Error Code: 101008) means that the user hashed shard could not be found in the database. Ensure you input the correct user shard or identifier.

  

**Q21: What does "for Self Custodial Wallet Seed Phrase Is Required" mean?** A21: This error (Error Code: 101009) indicates that a seed phrase is required for self-custodial wallet creation. Pass the seed phrase in the request body.

  

**Q22: What does "mnemonics/seedPhrase Expired" mean?** A22: This error (Error Code: 101010) means that the mnemonics or seed phrase has expired. Follow the instructions and complete the process within the specified time frame.

  

**Q23: What should I do if I see the "for Mpc First Verify User Detail" error?** A23: This error (Error Code: 101011) indicates that you need to verify user details from MPC Auth before proceeding. Complete the verification step.

  

**Q24: What does "seed Phrase Generation Can Be Only Done For Self Custodial Wallet" mean?** A24: This error (Error Code: 101012) indicates that seed phrase generation is only applicable for self-custodial wallets. Ensure you are using the correct wallet type.

  

**Q25: Why am I getting the "No Transaction Abi Data Found" error?** A25: This error (Error Code: 101013) means that no transaction ABI data could be found. Verify the transaction details.

  

**Q26: What does "for Mpc Wallet Can Not Send Route Transaction" mean?** A26: This error (Error Code: 101014) indicates that MPC wallets cannot send route transactions. Ensure the transaction type is supported.

  

**Q27: What should I do if I get the "mpc Wallet Can Only Have User Shard" error?** A27: This error (Error Code: 101015) means that MPC wallets can only have user shards. Verify the wallet configuration.

  

**Q28: What does "mpc Wallet Can Only Be Verified" mean?** A28: This error (Error Code: 101016) indicates that MPC wallets can only be verified. Complete the verification process.

  

**Q29: What does "invalid Api Key ! Only Contract deployed User apiKey is valid" mean?** A29: This error (Error Code: 101017) means that the API key is invalid. Only the API key of the user who deployed the contract is valid.

  

**Q30: Why am I getting the "only Custodial Wallet Address Can Sign Transaction through Generated Routes" error?** A30: This error (Error Code: 101018) means that only custodial wallet addresses can sign transactions through generated routes. Ensure you are using the correct wallet type.

  

**Q31: What does "deployed Smart Contract Address Not Found in DB" mean?** A31: This error (Error Code: 101019) indicates that the deployed smart contract address could not be found in the database. Verify the smart contract address.

  

**Q32: What should I do if I see the "user Auth Credential Already Exists" error?** A32: This error (Error Code: 101020) means that the social auth credential entered is already associated with an existing wallet. Use a different credential to create a new MPC wallet or log in to the existing wallet.

  

**Q33: Why am I getting the "Invalid credentials or access denied" error?** A33: This error (Error Code: 101021) indicates that the credentials are invalid or access is denied. Check your credentials and try again.


## API Reference

[Visit our API Reference](https://kalp-studio.redocly.app/untitled-1.yaml){ .md-button }  