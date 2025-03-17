<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# KS Pay API Integration Guide

## 1. Introduction

### Purpose

KS Pay (PE) API enables businesses to integrate and manage financial transactions. A few of the key API functionalities are user authentication (sign-up, login, and KYB verification), company onboarding, and application management.

Multi-step verification processes, including credentials, webhooks, and NPM integration, enable seamless interaction with payment gateways, enabling users to add, verify, and prioritize gateways.

In addition, the API supports tax, product, and customer management. Customers can be created, invoices can be generated, bank accounts can be managed, and withdrawals can be initiated.

Through customizable API keys, developers can automate billing and invoicing processes, track transaction statuses, and access payment analytics. A comprehensive documentation ensures smooth integration and secure financial operations, making KS Pay API a robust solution for businesses that manage payments.

### Audience

This guide is intended for developers, DevOps engineers, and product managers who need to integrate Payment engine capabilities into their applications using the KS Pay API.

### API Version

1.0.0

### Postman Collection 

For ease of use and testing, we provide a Postman collection with pre-configured requests:

[KS Pay API Collection](https://www.postman.com/p2eengineering/workspace/ks-pay-api-documentation/collection/30994788-84410cba-9ca9-4a9e-a75b-a39c34de2767?action=share&creator=30994788)

**Sandbox URL**: https://pay-open-sandboxapi.kalp.studio

**Live URL**: https://pay-open-liveapi.kalp.studio

It is highly recommended to use the Sandbox environment for testing and development before moving to the Live environment.

## 2. Prerequisites

### Accounts

To access the API, Enter the Access token & Referesh token.

### Credentials

Merchant Token & Authorization key

### Tools

-   **Postman** (Recommended for API testing)
    
-   **cURL** (Command-line request testing)
    

### Permissions

-   Requires valid authentication credentials.

## 3. Authentication & Authorization & Error codes

### Authentication

Authentication is handled via API key middleware guards. The API key ensures that the request is from a valid user with the correct permissions.

#### Steps to Authenticate

1.  **Obtain API Key**: Request an API key from login API.
    
2.  **Include API Key in Request**: Use the API key in the headers of your API requests.


#### Example Authentication Header

```
Authorization:  YOUR_API_KEY

Merchant Token:  YOUR_API_KEY
``` 
   
### Request Payloads

The Payment Engine API supports the following types of request payloads:

-   **Form-Encoded**: `Content-Type: application/x-www-form-urlencoded`
    
-   **Raw**
    
-   **Form Data**
    
-   **JSON**
    

### Responses

Each response payload is encoded into JSON and contains a result indicating success or an error message for failed or rejected requests.

### Error Codes

Status codes other than 200 indicate an issue with the request. Here are some common error codes.

#### Common API Error Codes

```
const ErrorMessages = {
  invalidId: {
    message: (id) => `${id} not present in Request`,
    httpStatus: 400,
    code: -9,
  },
  notFoundUrl: {
    message: (msg) => msg,
    httpStatus: 404,
    code: -10,
  },
  externalError: {
    message: (msg) => msg,
    httpStatus: 400,
    code: -11,
  },
  invalidNanoid: {
    message: (prefix, length) =>
      `ID must start with '${prefix}' and be ${length} characters long with alphanumeric characters following the prefix.`,
    httpStatus: 400,
    code: -17,
  },
  invalidPaymentMethodIds: {
    message: (ids) =>
      `The following payment method IDs do not exist in DB: ${ids.join(', ')}`,
    httpStatus: 400,
    code: 13006,
  },
  environmentSetupError: {
    message: (env) =>
      `The environment URL for ${env} is not defined. Try sending specific environment in params.`,
    httpStatus: 400,
    code: -13,
  },
  // Module specific errors
  auth: {
    tokenMissing: {
      message: 'Token missing or incorrect',
      httpStatus: 400,
      code: 9000,
    },
    shortUrlTokenMissing: {
      message: 'ShortUrlToken missing or incorrect',
      httpStatus: 400,
      code: 9001,
    },
    apiKeyMissing: {
      message: 'Api Key is Missing',
      httpStatus: 400,
      code: 9002,
    },
    apiKeyNotGenerated: {
      message: 'Api Key is not generated!',
      httpStatus: 400,
      code: 9003,
    },
    unauthorizedAccess: {
      message: 'Unauthorized Access',
      httpStatus: 401,
      code: 9004,
    },
    unauthorized: {
      message: 'Unauthorized! Please provide valid credentials.',
      httpStatus: 401,
      code: 9007,
    },
  },
  currencyModule: {
    currencyAlreadyExists: {
      message: 'Currency already exists.',
      httpStatus: 400,
      code: 1051,
    },
    currencyNotExists: {
      message: "Currency doesn't exist",
      httpStatus: 400,
      code: 1052,
    },
    currencyCodeAlreadyExists: {
      message: 'Currency code already exists',
      httpStatus: 400,
      code: 1053,
    },
    invalidCurrencyCode: {
      message: 'Invalid currency code',
      httpStatus: 400,
      code: 1054,
    },
    currencySubTypeAlreadyExists: {
      message: 'Currency type and code already exist',
      httpStatus: 400,
      code: 1055,
    },
  },
  companyModule: {
    companyAlreadyExists: {
      message: 'Company already exists for this user, try updating the existing company.',
      httpStatus: 400,
      code: 2000,
    },
    companyAlreadyExistsWithThisName: {
      message: 'Company already exists with this name, try using a different name.',
      httpStatus: 409,
      code: 2001,
    },
    companyNotExists: {
      message: "Company doesn't exist.",
      httpStatus: 400,
      code: 2002,
    },
    companyNameEmpty: {
      message: "Company name can't be empty",
      httpStatus: 400,
      code: 2003,
    },
    companyNameError: {
      message: 'Company name must be between at least 3 characters and a maximum of 60 characters',
      httpStatus: 400,
      code: 2004,
    },
    invalidCountry: {
      message: 'Existing state does not belong to the new country',
      httpStatus: 400,
      code: 2005,
    },
    invalidState: {
      message: 'New state does not belong to the existing country',
      httpStatus: 400,
      code: 2006,
    },
    invalidCountryState: {
      message: 'State does not belong to the given country',
      httpStatus: 400,
      code: 2007,
    },
  },
  appModule: {
    appAlreadyExists: {
      message: 'Platform already exists',
      httpStatus: 400,
      code: 2051,
    },
    appEmailAlreadyExists: {
      message: 'Platform with this Email already exists',
      httpStatus: 400,
      code: 2052,
    },
    appNameAlreadyExists: {
      message: 'Platform with this Name already exists',
      httpStatus: 400,
      code: 2053,
    },
    appPhoneAlreadyExists: {
      message: 'Platform with this phone already exists',
      httpStatus: 400,
      code: 2054,
    },
    appNotExists: {
      message: 'Platform either does not exist or is not Active!',
      httpStatus: 400,
      code: 2055,
    },
    appNameEmpty: {
      message: "Platform name can't be empty",
      httpStatus: 400,
      code: 2056,
    },
    appNameError: {
      message: 'Platform name must be between at least 3 characters and a maximum of 256 characters',
      httpStatus: 400,
      code: 2057,
    },
    appNotExist: {
      message: 'No app assigned in this country',
      httpStatus: 400,
      code: 2058,
    },
    appNotExistWithThisUserID: {
      message: 'This app is not assigned to this user',
      httpStatus: 400,
      code: 2059,
    },
    appGatewayNotExist: {
      message: 'No gateway assigned in this app',
      httpStatus: 400,
      code: 2060,
    },
    invalidGstNo: {
      message: 'Enter Valid GST Number',
      httpStatus: 400,
      code: 2061,
    },
  },
  pagination: {
    pageShouldBePositive: {
      message: 'Page should be a positive number greater than 0',
      httpStatus: 400,
      code: 4089,
    },
    limitShouldBePositive: {
      message: 'Limit should be a positive number greater than 0',
      httpStatus: 400,
      code: 4056,
    },
  },
  countryModule: {
    countryNotExists: {
      message: 'Country with this name does not exist.',
      httpStatus: 400,
      code: 4052,
    },
  },
  stateModule: {
    stateDoesNotExists: {
      message: 'The state with this name does not exist.',
      httpStatus: 400,
      code: 5051,
    },
    stateNotCorrect: {
      message: 'The state does not belong to the specified country.',
      httpStatus: 400,
      code: 5052,
    },
  },
  system: {
    unauthorizedAccess: {
      message: 'You do not have access to edit the details, kindly contact administrator.',
      httpStatus: 401,
      code: 23,
    },
    noDataFound: {
      message: 'No data found with this ID!',
      httpStatus: 404,
      code: 24,
    },
    invalidRequest: {
      message: 'Invalid Request',
      httpStatus: 400,
      code: 25,
    },
    oopsSomethingWentWrong: {
      message: 'Oops! Something went wrong',
      httpStatus: 500,
      code: 26,
    },
    externalProviderIssue: {
      message: 'External Provider issue!',
      httpStatus: 400,
      code: 27,
    },
    dbError: {
      message: 'DB Error',
      httpStatus: 400,
      code: 28,
    },
    invalidApiKey: {
      message: 'Invalid API key',
      httpStatus: 400,
      code: 29,
    },
    notAvailable: {
      message: 'Currently we are not available in your country. Please contact the support team.',
      httpStatus: 500,
      code: 30,
    },
  },
  custom: {
    keyNotFoundInDB: {
      message: 'No such key found in the system model',
      httpStatus: 400,
      code: 11001,
    },
    inactiveKeyInDB: {
      message: 'The key provided is not active at the moment',
      httpStatus: 400,
      code: 11002,
    },
    invalidDecryptRes: {
      message: 'The key did not return app ID on Decrypt',
      httpStatus: 400,
      code: 11003,
    },
    appNotFoundForDecryptId: {
      message: 'No app associated with decrypted app ID',
      httpStatus: 400,
      code: 11004,
    },
    tooManyRequests: {
      message: 'Too many requests made in a short period',
      httpStatus: 429,
      code: 11005,
    },
  },
  paymentMethod: {
    paymentMethodNotFound: {
      message: 'Payment method not found for the provided ID',
      httpStatus: 404,
      code: 12001,
    },
    paymentMethodExists: {
      message: 'Payment method with this name already exists',
      httpStatus: 409,
      code: 12002,
    },
    paymentMethodAlreadyEnabled: {
      message: 'Payment method is already enabled',
      httpStatus: 409,
      code: 12003,
    },
    paymentMethodAlreadyDisabled: {
      message: 'Payment method is already disabled',
      httpStatus: 409,
      code: 12004,
    },
    paymentMethodNotAllowed: {
      message: 'This payment method is not allowed to be enabled',
      httpStatu

```

#### Sandbox/Live API Error codes

```
uuidErr: (id: string): ErrorMessage =>

this.generateErrorMessage(`Invalid ID ${id}`, 400, -3),

invalidNanoid: (prefix: string, length: number): ErrorMessage =>

this.generateErrorMessage(

`ID must start with '${prefix}' and be ${length} characters long with alphanumeric characters following the prefix.`,

400,

-17,

),

customError: (message: string): ErrorMessage =>

this.generateErrorMessage(message, 400, -17),

decimalValueAmountError: (decimalValue: number): ErrorMessage =>

this.generateErrorMessage(

`Number should have at most the allowed number of decimal places ie - ${decimalValue}`,

400,

-19,

),

invalidPaymentMethodIds: (invalidIds: string[]): ErrorMessage =>

this.generateErrorMessage(

`The following payment method IDs does not exist in DB: ${invalidIds.join(', ')}`,

400,

13006,

),

InvalidId: (id: string): ErrorMessage =>

this.generateErrorMessage(`${id} not present in Request`, 400, -9),

NotFoundUrl: (message: string): ErrorMessage =>

this.generateErrorMessage(message, 404, -10),

missingGatewaySpecsKeys: (missingKeys: string[]): ErrorMessage =>

this.generateErrorMessage(

`The following required fields are missing from the provided data: ${missingKeys.join(', ')}`,

400,

-13,

),

invalidKeyValues: (invalidKeyValues: string[]): ErrorMessage =>

this.generateErrorMessage(

`Invalid keys found for gateway: ${invalidKeyValues.join(', ')}`,

400,

-17,

),

invalidCredentials: (name: string, currency: string): ErrorMessage =>

this.generateErrorMessage(

`Invalid credentials for gateway: ${name} for: ${currency}`,

401,

-34,

),

externalError: (message: string, status: number): ErrorMessage =>

this.generateErrorMessage(message, status, -11),

auth: {

authTokenMissing: this.errorMessage('Token missing or incorrect', 400, 9000),

shortUrlTokenMissing: this.errorMessage('ShortUrlToken missing or incorrect', 400, 9001),

authApiKeyMissing: this.errorMessage('Api Key is Missing', 400, 9002),

apiKeyNotGenerated: this.errorMessage('Api Key is not generated!', 400, 9003),

unauthroizedAccess: this.errorMessage('Unauthorized Access', 400, 9004),

unauthroizedApiKey: this.errorMessage('Invalid API key', 400, 9005),

unauthorized: this.errorMessage('Unauthorized! Please provide valid credentials.', 401, 9007),

refreshTokenExpired: this.errorMessage('Refresh token has expired.', 401, 9008),

tokenExpired: this.errorMessage('Token has expired.', 401, 9009),

invalidRefreshToken: this.errorMessage('Invalid token.', 401, 9008),

},

systemError: {

unauthorizedAccess: this.errorMessage(

'You do not have access to edit or fetch the details, kindly contact the administrator.',

404,

23,

),

noDataFound: this.errorMessage('No data found with this ID!', 404, 24),

invalidRequest: this.errorMessage('Invalid Request', 400, 25),

oopsSomethingWentWrong: this.errorMessage('Oops! Something went wrong', 500, 26),

externalProviderIssue: this.errorMessage('External Provider issue!', 400, 27),

dbError: this.errorMessage('DB Error', 400, 28),

invalidApiKey: this.errorMessage('Invalid API key', 400, 29),

notAvailable: this.errorMessage('Currently, we are not available in your country. Please contact the support team.', 500, 30),

invalidOrigin: this.errorMessage('Access denied from this origin.', 403, 13007),

},

customErrors: {

keyNotFoundInDB: this.errorMessage('No such key found in the system model', 400, 11001),

inactiveKeyInDB: this.errorMessage('The key provided is not active at the moment', 400, 11002),

invalidDecryptRes: this.errorMessage('The key did not return app ID on Decrypt', 400, 11003),

appNotFoundForDecryptId: this.errorMessage('No app associated with decrypted app ID', 400, 11004),

tooManyRequests: this.errorMessage('Too many requests made in a short period', 429, 11005),

datesExceedError: this.errorMessage('Date range exceeds limit! Date range should not exceed 90 days.', 400, 11006),

dateRangeError: this.errorMessage("Error: 'fromDate' should be earlier than 'toDate'.", 400, 11007),

startDateBeforeAppCreation: this.errorMessage(`The start date cannot be before the app creation date.`, 400, 11008),

startDateAfterToday: this.errorMessage("The start date cannot be after today's date.", 400, 11009),

startAndEndDateRequired: this.errorMessage('Both start date and end date are required if one is provided.', 400, 11010),

endDateAfterToday: this.errorMessage("The end date cannot be after today's date.", 400, 11011),

},

keyVaultErrors: {

credentialsNotFound: this.errorMessage('Credentials not found for the provided access key', 404, 11001),

appNotFound: this.errorMessage('Application not found for the provided app ID', 404, 11002),

userDoesNotBelongToApp: this.errorMessage('User does not belong to the specified application', 403, 11003),

invalidSecretKey: this.errorMessage('Invalid credentials, please check the provided secret key', 400, 11004),

signatureExpired: this.errorMessage('The provided signature has expired', 400, 11005),

invalidSignatureFormat: this.errorMessage('The format of the provided signature is invalid', 400, 11006),

encryptionError: this.errorMessage('Error occurred during encryption or decryption', 500, 11007),

accessKeyMismatch: this.errorMessage('Access key does not match any active credentials', 400, 11008),

generalVerificationError: this.errorMessage('An error occurred during signature verification', 500, 11009),

credentialsAlreadyViewed: this.errorMessage('Credentials already viewed or downloaded, try regenerating if lost.', 400, 11010),

appDisabled: this.errorMessage('Application is disabled!', 404, 11011),

},

gatewayErrors: {

gatewayNotFound: this.errorMessage('Gateway not found or is disabled for the provided ID', 404, 13001),

gatewaySpecsNotFound: this.errorMessage('Gateway Specs not found for the provided ID', 404, 13002),

gatewayNameExists: this.errorMessage('Gateway with this name already exists', 409, 13003),

gatewayAlreadyExistForThisUser: this.errorMessage('Gateway with this name already exists for this user', 409, 13004),

invalidGatewayData: this.errorMessage('Provided data for gateway is invalid', 400, 13005),

gatewayUpdateConflict: this.errorMessage('Gateway with this name already exists, cannot update', 409, 13006),

invalidCurrencyId: this.errorMessage('Invalid currency ID provided, check if currency is valid or disabled by administration', 400, 13007),

credentialsNotYetAdded: this.errorMessage('Credentials not yet updated, or step 1 is still pending', 400, 13008),

credentialStepFailed: this.errorMessage('Step 1 (Credential Status) is in a failed state; cannot update step 2 or step 3.', 400, 13009),

stepAlreadyCompleted: this.errorMessage('Step already in verification state', 400, 13010),

GatewayStatusInVerify: this.errorMessage("Gateway is in verification, can't reattempt", 400, 13011),

GatewayStatusNotVerified: this.errorMessage("Gateway is in verification, can't add domain", 400, 13012),

GatewayStatusNotVerifiedCannotDisable: this.errorMessage("Gateway is in verification, can't disable", 400, 13013),

paymentGatewayCannotBeEdited: this.errorMessage("Gateway can't be edited, reattempt the verification process to edit the details", 400, 13014),

},

};

}
```

## API Reference

### Server-to-Server (S2S) API Flow

#### 1. Generate Token
This API generates an access token and refresh token for authentication. The access token is required for subsequent API calls.

#### Request
**Method:** `POST`

**URL:** `{{baseURL}}/auth/generate-token/{{appId}}`

**Headers:**
```json
{
  "Content-Type": "application/json"
}
```

**Body:**
```json
{
  "accessKey": "{{accesskey}}",
  "secretKey": "{{secretKey}}"
}
```

#### Response
**Status Code:** `201 Created`

**Body:**
```json
{
  "status": 201,
  "message": "success",
  "result": {
    "accessToken": "YOUR_ACCESS_TOKEN",
    "refreshToken": "YOUR_REFRESH_TOKEN"
  }
}
```

#### Description
- Authenticates the user using `accessKey` and `secretKey`.
- Returns an `accessToken` and `refreshToken`.
- The `accessToken` is short-lived and must be refreshed using the `refreshToken`.


#### 2. Generate Refresh Token
This API refreshes the access token using the refresh token.

#### Request
**Method:** `POST`

**URL:** `{{baseURL}}/auth/refresh-token`

**Headers:**
```json
{
  "Authorization": "{{r_token}}",
  "Content-Type": "application/json"
}
```

**Body:**
```json
{
  "accessKey": "{{accesskey}}",
  "secretKey": "{{secretKey}}"
}
```

#### Response
**Status Code:** `201 Created`

**Body:**
```json
{
  "status": 201,
  "message": "success",
  "result": {
    "accessToken": "NEW_ACCESS_TOKEN",
    "refreshToken": "NEW_REFRESH_TOKEN"
  }
}
```

#### Description
- Refreshes the `accessToken` using the `refreshToken`.
- Returns a new `accessToken` and `refreshToken`.

#### 3. Fetch Currencies
This API retrieves a list of supported currencies.

#### Request
**Method:** `GET`

**URL:** `{{baseURL}}/currencies`

**Headers:**
```json
{
  "Authorization": "Bearer {{a_token}}",
  "Content-Type": "application/json"
}
```

#### Response
**Status Code:** `200 OK`

**Body:**
```json
{
  "status": 200,
  "message": "success",
  "result": [
    {
      "name": "Rupees",
      "code": "INR",
      "symbol": "Rs",
      "type": "FIAT",
      "userId": "us_M6jVa85Zb",
      "id": "c_WkmEe23LeI",
      "isActive": true,
      "createdAt": "2024-08-03T11:57:59.647Z"
    }
  ]
}
```

#### Description
- Returns a list of supported currencies, including their codes, symbols, and types.

#### 4. Fetch Payment Methods for Currency
This API retrieves available payment methods for a specific currency.

### Request
**Method:** `GET`

**URL:** `{{baseURL}}/{{currencyId}}/payment-methods`

**Headers:**
```json
{
  "Authorization": "Bearer {{a_token}}",
  "Content-Type": "application/json"
}
```

#### Response
**Status Code:** `200 OK`

**Body:**
```json
{
  "status": 200,
  "message": "success",
  "result": [
    { "id": "pm_Mk55VGvFm", "name": "NET BANKING", "isActive": true },
    { "id": "pm_QtgkfiiWb", "name": "DEBIT CARD", "isActive": true }
  ]
}
```

#### Description
- Returns a list of available payment methods for a specific currency.

#### 5. Initiate Transaction
This API initiates a payment transaction.

### Request
**Method:** `POST`

**URL:** `{{baseURL}}/transaction/initiate`

**Headers:**
```json
{
  "x-signature": "{{Signature}}"
}
```

**Body:**
```json
{
  "currencyId": "c_JdzYuwqF6O",
  "paymentMethodId": "pm_5LR93Agwv",
  "amount": 345.67,
  "referenceNumber": "{{referenceNumber}}"
}
```

#### Response
**Status Code:** `201 Created`

**Body:**
```json
{
  "status": 201,
  "message": "success",
  "result": {
    "pe_txnId": "tx_UOVynlQ0j",
    "providerOrderId": "order_P4sEpHDzofjQwV",
    "amount": 345.67,
    "currency": "INR"
  }
}
```

#### 6. Process Transaction
**API Name:** Process Transaction

**Description:** Processes the initiated transaction using the generated signature.

**Endpoint:**
```
POST - /transaction/process
```

**Request Headers:**
```json
{
  "x-signature": "7b452bc7f5adfe1d65e...",
  "Content-Type": "application/json"
}
```

**Response:**
```json
{
  "order": "..."
}
```

---

#### Description
- Initiates a payment transaction.

#### 7. Fetch Transaction by ID
This API retrieves transaction details using its ID.

#### Request
**Method:** `GET`

**URL:** `{{baseURL}}/transaction/txnId/{{txnId}}`

**Headers:**
```json
{
  "Authorization": "Bearer {{a_token}}",
  "Content-Type": "application/json"
}
```

#### Response
**Status Code:** `200 OK`

#### Description
- Retrieves the details of a transaction using its unique ID.

#### 8. Fetch All Transactions
This API retrieves all transactions.

#### Request
**Method:** `GET`

**URL:** `{{baseURL}}/transaction`

**Headers:**
```json
{
  "Authorization": "Bearer {{a_token}}",
  "Content-Type": "application/json"
}
```

#### Description
- Retrieves a list of all transactions.

### KS-PAY API Sequence to Use NPM Package

#### 1. Generate Token
**API Name:** Generate Token

**Description:** This API generates an access token and refresh token for authentication.

**Endpoint:**
```
POST - auth/generate-token/{AppID}
```

**Request Headers:**
```json
{
  "Content-Type": "application/json"
}
```

**Request Body:**
```json
{
  "accesskey": "publicKey",
  "secretKey": "secretKey"
}
```

**Response:**
```json
{
  "accessToken": "...",
  "refreshToken": "..."
}
```

---

#### 2. Get Currencies
**API Name:** Get Available Currencies

**Description:** Retrieves a list of available currencies for transactions.

**Endpoint:**
```
GET - /currencies
```

**Request Headers:**
```json
{
  "Authorization": "Bearer {accessToken}"
}
```

**Response:**
```json
[
  { "currencyId": "c_2xqOlqufc3", "name": "USD" },
  
]
```

---

#### 3. Get Payment Methods
**API Name:** Get Payment Methods

**Description:** Retrieves a list of available payment methods for a specific currency.

**Endpoint:**
```
GET - /{currencyId}/payment-methods
```

**Request Headers:**
```json
{
  "Authorization": "Bearer {accessToken}"
}
```

**Response:**
```json
[
  { "paymentMethodId": "pm_67NoP7JaQ", "name": "Credit Card" },
  
]
```

---

#### 4. Initiate Transaction
**API Name:** Initiate Transaction

**Description:** Initiates a transaction by specifying currency, payment method, amount, and a reference number.

**Endpoint:**
```
POST - /transaction/initiate
```

**Request Headers:**
```json
{
  "Authorization": "Bearer {accessToken}",
  "Content-Type": "application/json"
}
```

**Request Body:**
```json
{
  "currencyId": "c_2xqOlqufc3",
  "paymentMethodId": "pm_67NoP7JaQ",
  "amount": 2,
  "referenceNumber": "OcrcZcu5z0Az1w2Z",
  "appId": "ap_rtk2WdyQR",
  "redirectUrl": "your_redirect_url"
}
```

**Response:**
```json
{
  "signature": "..."
}
```

---

#### 5. Process Transaction
**API Name:** Process Transaction

**Description:** Processes the initiated transaction using the generated signature.

**Endpoint:**
```
POST - /transaction/process
```

**Request Headers:**
```json
{
  "x-signature": "7b452bc7f5adfe1d65e...",
  "Content-Type": "application/json"
}
```

**Response:**
```json
{
  "order": "..."
}
```

---

#### 6. Pass Order Object to NPM Package
**API Name:** Pass Order Object

**Description:** Pass the Order object received from the `/transaction/process` endpoint as a payload to the NPM package.

**Payload:**
```json
{
  "order": {
    // Order object details
  }
}
```

---

#### 7. Handle Payment Response
**API Name:** Handle Payment Response

**Description:** After the payment is processed, the user will be redirected to the specified `redirectUrl` with the following parameters:

- **payment_status:** The status of the payment (e.g., "success", "failed").
- **kspay_id:** The unique identifier for the transaction in KS-PAY.
- **provider_payment_id:** The unique identifier for the transaction in the payment provider's system.

The user can then decide what to do next, such as making an API call or redirecting to another page.

---

This concludes the API sequence for integrating the KS-PAY payment gateway using the NPM package.