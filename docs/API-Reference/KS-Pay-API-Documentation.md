<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# KS Pay API Integration Guide

## 1. Introduction

### Purpose

Kalp Studio Payment Engine (PE) API enables businesses to integrate and manage financial transactions. A few of the key API functionalities are user authentication (sign-up, login, and KYB verification), company onboarding, and application management.

Multi-step verification processes, including credentials, webhooks, and NPM integration, enable seamless interaction with payment gateways, enabling users to add, verify, and prioritize gateways.

In addition, the API supports tax, product, and customer management. Customers can be created, invoices can be generated, bank accounts can be managed, and withdrawals can be initiated.

Through customizable API keys, developers can automate billing and invoicing processes, track transaction statuses, and access payment analytics. A comprehensive documentation ensures smooth integration and secure financial operations, making Kalp Pay API a robust solution for businesses that manage payments.

### Audience

This guide is intended for developers, DevOps engineers, and product managers who need to integrate Payment engine capabilities into their applications using the KS Pay API.

### API Version

1.0.0

### Postman Collection 

[KS Pay API Collection](https://www.postman.com/p2eengineering/workspace/ks-pay-api-documentation/collection/30994788-84410cba-9ca9-4a9e-a75b-a39c34de2767?action=share&creator=30994788)

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

###  **Server-to-Server (S2S) API Flow**

#### **1. Generate Token**

This API is used to generate an access token and refresh token for authentication. The access token is required for subsequent API calls.

#### **Request**

-   **Method**:  `POST`
    
-   **URL**:  `{{KSPAY3Url}}/auth/generate-token/{{appId}}`
    
-   **Headers**:
    
    -   `Content-Type: application/json`
        
-   **Body**:

    {
      "accessKey": "{{accesskey}}",
      "secretKey": "{{secretKey}}"
    }
`
  

#### **Response**

-   **Status Code**:  `201 Created`
    
-   **Body**:
    
    
  ``
   
    
    {
      "status": 201,
      "message": "success",
      "result": {
        "accessToken": "YOUR_ACCESS_TOKEN",
        "refreshToken": "YOUR_REFRESH_TOKEN"
      }
    ```
    

#### **Description**

-   This endpoint authenticates the user using the provided  `accessKey`  and  `secretKey`.
    
-   It returns an  `accessToken`  and  `refreshToken`  for subsequent API calls.
    
-   The  `accessToken`  is short-lived and must be refreshed using the  `refreshToken`.
    

----------

### **2. Generate Signature**

This API generates a signature for secure API requests. The signature is used to validate the authenticity of the request.

#### **Request**

-   **Method**:  `POST`
    
-   **URL**:  `{{KSPAY3Url}}/auth/generate-signature/{{appId}}`
    
-   **Headers**:
    
    -   `Content-Type: application/json`
        
-   **Body**:
    
   `
    
    {
      "accessKey": "{{accesskey}}",
      "secretKey": "{{secretKey}}"
    }
    

#### **Response**

-   **Status Code**:  `201 Created`
    
-   **Body**:
    
   `
    
    {
      "status": 201,
      "message": "success",
      "result": "GENERATED_SIGNATURE"
    }
    

#### **Description**

-   This endpoint generates a cryptographic signature using the provided  `accessKey`  and  `secretKey`.
    
-   The signature is used to secure API requests and validate their authenticity.
    

----------

### **3. Generate Refresh Token**

This API refreshes the access token using the refresh token. It is used when the access token expires.

#### **Request**

-   **Method**:  `POST`
    
-   **URL**:  `{{KSPAY3Url}}auth/refresh-token`
    
-   **Headers**:
    
    -   `Authorization: {{r_token}}`
        
    -   `Content-Type: application/json`
        
-   **Body**:
    
    ```
    
    {
      "accessKey": "{{accesskey}}",
      "secretKey": "{{secretKey}}"
    }
    

#### **Response**

-   **Status Code**:  `201 Created`
    
-   **Body**:
    
   ``
    
    {
      "status": 201,
      "message": "success",
      "result": {
        "accessToken": "NEW_ACCESS_TOKEN",
        "refreshToken": "NEW_REFRESH_TOKEN"
      }
    }
    

#### **Description**

-   This endpoint refreshes the access token using the  `refreshToken`.
    
-   It returns a new  `accessToken`  and  `refreshToken`  for continued API access.
    

----------

### **4. Fetch Currencies**

This API retrieves a list of supported currencies.

#### **Request**

-   **Method**:  `GET`
    
-   **URL**:  `{{KSPAY3Url}}/currencies`
    
-   **Headers**:
    
    -   `Authorization: Bearer {{a_token}}`
        
    -   `Content-Type: application/json`
        

#### **Response**

-   **Status Code**:  `200 OK`
    
-   **Body**:
    
   ``
    
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
          "isDisabled": false,
          "createdAt": "2024-08-03T11:57:59.647Z",
          "updatedAt": "2024-08-03T11:57:59.647Z"
        }
      ]
    }
    

#### **Description**

-   This endpoint returns a list of all supported currencies, including their codes, symbols, and types (e.g., FIAT).
    
-   It is useful for displaying currency options to users during transactions.
    

----------

### **5. Fetch Payment Methods for Currency**

This API retrieves the payment methods available for a specific currency.

#### **Request**

-   **Method**:  `GET`
    
-   **URL**:  `{{KSPAY3Url}}/{{currencyId}}/payment-methods`
    
-   **Headers**:
    
    -   `Authorization: Bearer {{a_token}}`
        
    -   `Content-Type: application/json`
        

#### **Response**

-   **Status Code**:  `200 OK`
    
-   **Body**:
    
    ```
    
    {
      "status": 200,
      "message": "success",
      "result": [
        {
          "id": "pm_Mk55VGvFm",
          "name": "NET BANKING",
          "isActive": true,
          "isDisabled": false
        },
        {
          "id": "pm_QtgkfiiWb",
          "name": "DEBIT CARD",
          "isActive": true,
          "isDisabled": false
        }
      ]
    }
    

#### **Description**

-   This endpoint returns a list of payment methods (e.g., Net Banking, Debit Card) available for a specific currency.
    
-   It helps users select a payment method during transaction initiation.
    

----------

### **6. Initiate Transaction**

This API initiates a payment transaction.

#### **Request**

-   **Method**:  `POST`
    
-   **URL**:  `{{KSPAY3Url}}/transaction/initiate`
    
-   **Headers**:
    
    -   `x-signature: {{Signature}}`
        
-   **Body**:
    
   ``
    
    {
      "currencyId": "c_JdzYuwqF6O",
      "paymentMethodId": "pm_5LR93Agwv",
      "amount": 345.67,
      "referenceNumber": "{{referenceNumber}}"
    }
    

#### **Response**

-   **Status Code**:  `201 Created`
    
-   **Body**:
    
   ``
    
    {
      "status": 201,
      "message": "success",
      "result": {
        "pe_txnId": "tx_UOVynlQ0j",
        "providerOrderId": "order_P4sEpHDzofjQwV",
        "amount": 345.67,
        "currency": "INR",
        "gateway": "RAZORPAY",
        "method": "NET BANKING",
        "mode": "sandbox",
        "config": {
          "display": {
            "blocks": {
              "netbanking": {
                "name": "Pay using Netbanking",
                "instruments": [
                  {
                    "method": "netbanking"
                  }
                ]
              }
            },
            "sequence": [
              "block.netbanking"
            ],
            "preferences": {
              "show_default_blocks": false
            }
          }
        }
      }
    }
    

#### **Description**

-   This endpoint initiates a payment transaction using the specified currency, payment method, and amount.
    
-   It returns transaction details, including a unique transaction ID (`pe_txnId`) and provider order ID (`providerOrderId`).
    

----------

### **7. Fetch Transaction by ID**

This API retrieves the details of a specific transaction using its ID.

#### **Request**

-   **Method**:  `GET`
    
-   **URL**:  `{{KSPAY3Url}}/transaction/txnId/{{txnId}}`
    
-   **Headers**:
    
    -   `Authorization: Bearer {{a_token}}`
        
    -   `Content-Type: application/json`
        

#### **Response**

-   **Status Code**:  `200 OK`
    
-   **Body**:
    
``
    
    {
      "status": 200,
      "message": "success",
      "result": {
        "id": "tx_aNNJ7BJbt",
        "providerOrderId": "4AM954523V5514225",
        "currencyId": "c_wQOPe0WCeW",
        "appId": "ap_mPFz05qW2",
        "referenceNumber": "yo3pEaqOfMXbhGJx",
        "paymentMethodId": "pm_mbS72zjCr",
        "amount": "11",
        "currencyCode": "USD",
        "origin": "http://localhost:3030",
        "gatewayConfigId": "gc_F2TcBqkVS",
        "paymentType": "PAYPAL",
        "subPaymentType": null,
        "providerName": "PAYPAL",
        "providerPaymentType": "PAYPAL",
        "providerSubpaymentType": null,
        "providerTxnId": null,
        "signature": null,
        "status": "PENDING",
        "providerStatus": "CREATED",
        "userId": "us_ZN6ZtYFbT",
        "isPaid": false,
        "createdAt": "2024-08-26T05:24:17.425Z",
        "updatedAt": "2024-09-05T10:00:08.700Z"
      }
    }
    

#### **Description**

-   This endpoint retrieves the details of a transaction using its unique transaction ID (`txnId`).
    
-   It provides information such as the transaction status, amount, currency, and payment method.

### **8. Fetch All Transactions**

This API retrieves a list of all transactions.

#### **Request**

-   **Method**:  `GET`
    
-   **URL**:  `{{KSPAY3Url}}/transaction`
    
-   **Headers**:
    
    -   `Authorization: Bearer {{a_token}}`
        
    -   `Content-Type: application/json`
        

#### **Response**

-   **Status Code**:  `200 OK`
    
-   **Body**:
    
   ``
    
    {
      "status": 200,
      "message": "success",
      "result": [
        {
          "id": "tx_aNNJ7BJbt",
          "providerOrderId": "4AM954523V5514225",
          "currencyId": "c_wQOPe0WCeW",
          "appId": "ap_mPFz05qW2",
          "referenceNumber": "yo3pEaqOfMXbhGJx",
          "paymentMethodId": "pm_mbS72zjCr",
          "amount": "11",
          "currencyCode": "USD",
          "origin": "http://localhost:3030",
          "gatewayConfigId": "gc_F2TcBqkVS",
          "paymentType": "PAYPAL",
          "subPaymentType": null,
          "providerName": "PAYPAL",
          "providerPaymentType": "PAYPAL",
          "providerSubpaymentType": null,
          "providerTxnId": null,
          "signature": null,
          "status": "PENDING",
          "providerStatus": "CREATED",
          "userId": "us_ZN6ZtYFbT",
          "isPaid": false,
          "createdAt": "2024-08-26T05:24:17.425Z",
          "updatedAt": "2024-09-05T10:00:08.700Z"
        }
      ]
    }
    

#### **Description**

-   This endpoint retrieves a list of all transactions, including their status, amount, currency, and payment method.
    
-   It is useful for displaying a transaction history or generating reports.
    

----------

### **9. Fetch Transaction by Reference Number**

This API retrieves the details of a transaction using its reference number.

#### **Request**

-   **Method**:  `GET`
    
-   **URL**:  `{{KSPAY3Url}}/transaction/referenceNo/{{referenceNumber}}`
    
-   **Headers**:
    
    -   `Authorization: Bearer {{a_token}}`
        
    -   `Content-Type: application/json`
        

#### **Response**

-   **Status Code**:  `200 OK`
    
-   **Body**:
   
  ``
    
    {
      "status": 200,
      "message": "success",
      "result": {
        "id": "tx_aNNJ7BJbt",
        "providerOrderId": "4AM954523V5514225",
        "currencyId": "c_wQOPe0WCeW",
        "appId": "ap_mPFz05qW2",
        "referenceNumber": "yo3pEaqOfMXbhGJx",
        "paymentMethodId": "pm_mbS72zjCr",
        "amount": "11",
        "currencyCode": "USD",
        "origin": "http://localhost:3030",
        "gatewayConfigId": "gc_F2TcBqkVS",
        "paymentType": "PAYPAL",
        "subPaymentType": null,
        "providerName": "PAYPAL",
        "providerPaymentType": "PAYPAL",
        "providerSubpaymentType": null,
        "providerTxnId": null,
        "signature": null,
        "status": "PENDING",
        "providerStatus": "CREATED",
        "userId": "us_ZN6ZtYFbT",
        "isPaid": false,
        "createdAt": "2024-08-26T05:24:17.425Z",
        "updatedAt": "2024-09-05T10:00:08.700Z"
      }
    }
    

#### **Description**

-   This endpoint retrieves the details of a transaction using its unique reference number.
    
-   It provides information such as the transaction status, amount, currency, and payment method.

### **NPM Flow Integration Guide for Kalp Studio Payment Engine (KS Pay)**

This guide provides step-by-step instructions for integrating the  **KS Pay Payment Engine**  into your Node.js application using the  **NPM package**. The NPM flow is ideal for developers working with JavaScript/Node.js and simplifies the integration process.

----------

#### **Prerequisites**

1.  **Node.js**  installed on your system.
    
2.  **NPM**  (Node Package Manager) installed.
    
3.  **KS Pay API Key**  and  **Merchant Token**  (obtained from the KS Pay dashboard).
    

----------

#### **Step 1: Install the KS Pay NPM Package**

1.  Open your terminal or command prompt.
    
2.  Navigate to your project directory.
    
3.  Install the KS Pay NPM package:
    
    `
    npm install ks-pay
    `
    

----------

#### **Step 2: Initialize the KS Pay Client**

1.  Import the KS Pay package and initialize the client in your application:
    
   `
    
    const KSPay = require('ks-pay');
    
    const ksPayClient = new KSPay({
      apiKey: 'YOUR_API_KEY',         // Replace with your API Key
      merchantToken: 'YOUR_MERCHANT_TOKEN' // Replace with your Merchant Token
    });
   `
    

----------

#### **Step 3: Authentication**

To interact with the KS Pay API, you need to authenticate using an  **API Key**  and  **Merchant Token**. The NPM package provides methods to generate tokens and signatures.

#### **1. Generate Token**

Generate an access token for API requests:

```
ksPayClient.generateToken()
  .then(response => {
    console.log('Access Token:', response.token);
  })
  .catch(error => {
    console.error('Error generating token:', error);
  });
  
  ```
#### **2. Generate Signature**

Generate a signature for secure API requests:

```
const payload = {
  amount: 100.00,
  currency: 'USD',
  customerId: 'CUST123'
};

const signature = ksPayClient.generateSignature(payload);
console.log('Generated Signature:', signature);

```

#### **3. Generate Refresh Token (Optional)**

Generate a refresh token to renew your access token:

```

ksPayClient.generateRefreshToken()
  .then(response => {
    console.log('Refresh Token:', response.refreshToken);
  })
  .catch(error => {
    console.error('Error generating refresh token:', error);
  });
```

----------

#### **Step 4: Fetch Data**

Use the KS Pay client to fetch necessary data like currencies and payment methods.

#### **1. Fetch Currencies**

Retrieve a list of supported currencies:

```

ksPayClient.fetchCurrencies()
  .then(response => {
    console.log('Supported Currencies:', response.currencies);
  })
  .catch(error => {
    console.error('Error fetching currencies:', error);
  });
```

#### **2. Fetch Payment Methods for a Currency**

Retrieve payment methods available for a specific currency:

```

ksPayClient.fetchMethodsForCurrency('USD')
  .then(response => {
    console.log('Payment Methods for USD:', response.methods);
  })
  .catch(error => {
    console.error('Error fetching payment methods:', error);
  });
```

----------

#### **Step 5: Initiate a Transaction**

Initiate a payment transaction using the KS Pay API.

#### **1. Initiate Transaction**

```

const transactionData = {
  amount: 100.00,
  currency: 'USD',
  paymentMethod: 'Credit Card',
  customerId: 'CUST123'
};

ksPayClient.initiateTransaction(transactionData)
  .then(response => {
    console.log('Transaction ID:', response.transactionId);
    console.log('Transaction Status:', response.status);
  })
  .catch(error => {
    console.error('Error initiating transaction:', error);
  });
```
----------

### **Step 6: Fetch Transaction Details**

Retrieve transaction details using the transaction ID or reference number.

#### **1. Get Transaction by ID**

```

ksPayClient.getTransactionById('TX123456')
  .then(response => {
    console.log('Transaction Details:', response);
  })
  .catch(error => {
    console.error('Error fetching transaction:', error);
  });

```

#### **2. Get All Transactions**

Retrieve a list of all transactions:

```
ksPayClient.getAllTransactions()
  .then(response => {
    console.log('All Transactions:', response.transactions);
  })
  .catch(error => {
    console.error('Error fetching transactions:', error);
  });
```

#### **3. Get Transaction by Reference Number**

```

ksPayClient.getTransactionByReference('REF123')
  .then(response => {
    console.log('Transaction Details:', response);
  })
  .catch(error => {
    console.error('Error fetching transaction:', error);
  });
```

----------

### **Step 7: Handle Errors**

The KS Pay NPM package provides detailed error messages for troubleshooting. Always handle errors in your application:

```
ksPayClient.initiateTransaction(transactionData)
  .then(response => {
    console.log('Transaction Successful:', response);
  })
  .catch(error => {
    console.error('Error:', error.message);
    console.error('Error Code:', error.code);
    console.error('HTTP Status:', error.httpStatus);
  });
```

----------

#### **Example Use Case**

Here’s an example of a complete workflow:

```

const KSPay = require('ks-pay');

const ksPayClient = new KSPay({
  apiKey: 'YOUR_API_KEY',
  merchantToken: 'YOUR_MERCHANT_TOKEN'
});


// Step 1: Generate Token
ksPayClient.generateToken()
  .then(tokenResponse => {
    console.log('Token Generated:', tokenResponse.token);

    // Step 2: Fetch Currencies
    return ksPayClient.fetchCurrencies();
  })
  .then(currenciesResponse => {
    console.log('Currencies:', currenciesResponse.currencies);

    // Step 3: Initiate Transaction
    const transactionData = {
      amount: 100.00,
      currency: 'USD',
      paymentMethod: 'Credit Card',
      customerId: 'CUST123'
    };
    return ksPayClient.initiateTransaction(transactionData);
  })
  .then(transactionResponse => {
    console.log('Transaction ID:', transactionResponse.transactionId);

    // Step 4: Fetch Transaction Details
    return ksPayClient.getTransactionById(transactionResponse.transactionId);
  })
  .then(transactionDetails => {
    console.log('Transaction Details:', transactionDetails);
  })
  .catch(error => {
    console.error('Error:', error.message);
  });
  
  ```

----------

#### **Conclusion**

The  **NPM Flow**  simplifies the integration of KS Pay into Node.js applications. By following this guide, you can:

-   Authenticate using API keys.
    
-   Fetch currencies and payment methods.
    
-   Initiate and track transactions.
    
-   Handle errors effectively.