<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# Email Gateway Integration Guide v1

## 1. Introduction

### Purpose

The Email Gateway API enables seamless integration of email functionality into applications, allowing developers to send emails, manage authentication, retrieve logs, and handle webhooks efficiently. This guide provides a comprehensive overview of authentication mechanism, API endpoints, security best practices, and troubleshooting steps.

### Audience

This guide is intended for developers, DevOps engineers, and product managers who need to integrate email-sending capabilities into their applications using the Email Gateway API.

### API Version

1.0.0

### Import the collection

[View Postman Collection](https://p2eengineering.postman.co/workspace/Email-and-sms-gateway(V-1)~82963a14-28f0-4dba-ac8e-1faa2e99ed68/collection/30994788-f6865b35-e003-4ecf-8f3e-42a27063bb52?action=share&creator=30994856&active-environment=30994856-618c5de8-90f2-4665-9cca-55a0776d88c4 "https://p2eengineering.postman.co/workspace/Email-and-sms-gateway(V-1)~82963a14-28f0-4dba-ac8e-1faa2e99ed68/collection/30994788-f6865b35-e003-4ecf-8f3e-42a27063bb52?action=share&creator=30994856&active-environment=30994856-618c5de8-90f2-4665-9cca-55a0776d88c4")

## 2. Prerequisites

### Accounts

To access the API, Enter the Access token provided by service provider (Kalp Studio)

### Credentials

-   **Email authkey** (for sending emails)
    

### Tools

-   **Postman** (Recommended for API testing)
    
-   **cURL** (Command-line request testing)
    

### Permissions

-   Requires valid authentication credentials.
    

## 3. Authentication & Authorization

### Methods

-   Uses **email auth key validation.**
    
-   The emailauthkey would be validated and authenticated .
    

## 4. Base URLs & Environments

### Production vs. Sandbox

-   **Production**: `https://email-api.p2epl.io`
    

## 5. Endpoint Reference

### **Email Endpoints**

**Method** - POST

**Endpoint** - `/v1/send/email`

**Description** - Send an email without an attachment

**Method** - POST

**Endpoint** - `/v1/send/attachemail`

**Description** - Send an email with or without an attachment

**Method** - GET

**Endpoint** - `/v1/logs`

**Description** - Retrieve email logs


## 6. Error Handling

**400** - Unauthorized, you do not have permission to access this service.

**404** - Check your URL please

**400** - Invalid Request Format

**400** - Please take a moment before sending another email

**500** - Internal Server Error

### Example Error Response

    `{ "status": "failure", "message": "Invalid Request Format", "customErrorNumber": -999999, "errorFields": [ "emailType" ] }`

## 7. Rate Limits & Quotas

-   **5 requests per minute per email recipient**.
    

## 8. API Reference

### 1. How to send an email -

### Example Request (CURL) - Send Email without an attachment

`curl --location 'https://email-api.p2epl.io/v1/send/email' \ --header 'emailauthkey: keynames123 \ --header 'Content-Type: application/json' \ --data-raw '{ "emailTo": "subhankar.roy@mai.io", "emailFrom": "subhankar.roy@p2eppl.com", "subject": "FIRST MAIL", "message": "This is email from prod environment", "category": "account_related", "emailType": "account" }'`

### Step 1: Navigate to **Email-gateway Public**

Workspace in Postman

![link](https://pf-emoji-service--cdn.us-east-1.prod.public.atl-paas.net/standard/caa27a19-fc09-4452-b2b4-a301552fd69c/64x64/1f517.png)

[![](https://documenter-assets.pstmn.io/favicon.ico)Email-gateway Public](https://documenter.getpostman.com/view/30994788/2sAYX6o2CP#b7086287-9d91-4490-8b01-b9ed568b0f11)

### Step 2: Select the “Email-gateway“ folder in the collection list.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/1.png)

### Step 3: Select “v1 email” folder from the collection list.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/2.png)

### Step 4: Select “POST sendemail” from the collection list.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/3.png)

### Step 5: Click on the "Headers" tab and enter your emailauthkey.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/4.png)

### Step 6: Click on the "Body" tab and enter all the parameter values.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/5.png)

### Step 7: Click "Send"

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/6.png)

### Step 8: The response body will receive a success message, and an email will be sent.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/8.png)

### 2. How to send an email with an attachment

### Example Request (CURL) - Send Email with an attachment

`curl --location 'https://email-api.p2epl.io/v1/send/attachemail' \ --header 'emailauthkey: ancdef12345' \ --form 'emailTo="testeme@yopmail.com"' \ --form 'emailFrom="test@p2eppl.com"' \ --form 'subject="test subject"' \ --form 'message="content test"' \ --form 'category="test"' \ --form 'emailType="transactional"' \ --form 'file=@"/C:/Users/Joe/Downloads/Holiday List 2023.pdf"' \ --form 'emailCc[0]="testeme@yopmail.com"'`

### Step 1: Navigate to Email-gateway public.

![link](https://pf-emoji-service--cdn.us-east-1.prod.public.atl-paas.net/standard/caa27a19-fc09-4452-b2b4-a301552fd69c/64x64/1f517.png)

[![](https://documenter-assets.pstmn.io/favicon.ico)Email-gateway Public](https://documenter.getpostman.com/view/30994788/2sAYX6o2CP#bbb046ca-17c7-42a7-9c6a-a61064aec780)

### Step 2: Select the “Email-gateway“ folder in the collection list.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/9.png)

### Step 3: Select “v1 email” folder from the collection list.


![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/10.png)

### Step 4: Select “POST attachemail” from the collection list.

Send Email is the route for sending email with an attachment. The body content is in Form Data.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/11.png)

### Step 5: Click on the "Headers" tab and enter your emailauthkey.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/12.png)

### Step 6: Click on the "Body" tab and enter all the parameter values.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/13.png)

### Step 7: Click "Send"
![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/14.png)

### Step 8: The response body will receive a success message and an email with an attachment will be sent.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/15.png)

### 3. How to retrieve email logs

### Example Request (CURL) - How to retrieve email logs

`curl --location 'https://email-api.p2epl.io/v1/logs?pageNo=1&pageSize=10' \ --header 'emailauthkey: abcdef12345'`

### Step 1: Navigate to **Email-gateway Public**

![link](https://pf-emoji-service--cdn.us-east-1.prod.public.atl-paas.net/standard/caa27a19-fc09-4452-b2b4-a301552fd69c/64x64/1f517.png)

[![](https://documenter-assets.pstmn.io/favicon.ico)Email-gateway Public](https://documenter.getpostman.com/view/30994788/2sAYX6o2CP#a6be5f63-34c6-45eb-bc65-375802ad19d2)

### Step 2: Select "GET email logs" in “v1 email” folder from the collection list.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/16.png)

### Step 3: Set the query parameters as per the requirement. "pageNo" ,"pageSize" or other parameters in the "Params" tab.

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/17.png)

### Step 4: Click on the "Headers" tab and enter your **emailauthkey.**

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/18.png)

### Step 5: Click "Send"

![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/19.png)

### Step 6: The response body will receive a success message and all email logs.
![enter image description here](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Email+integration+guide/20.png)