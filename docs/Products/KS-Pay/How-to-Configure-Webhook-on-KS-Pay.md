<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# How to Configure Webhook on KS Pay?

## Webhook Configuration for KS Pay Integration

Webhooks are a crucial component in integrating KS Pay with external payment gateways, such as Razorpay. They facilitate real-time communication between systems, ensuring immediate updates on key events like successful payments, failed transactions, and disputes. This comprehensive guide outlines the process of configuring webhooks to enable seamless communication between KS Pay and your chosen payment gateway.

## Understanding Webhooks

A webhook is an automated HTTP POST request triggered by specific events in one system and sent to a predefined URL in another system. It functions as a notification service, allowing your application to receive push notifications from external services when relevant events occur, eliminating the need for constant polling.

## Importance of Webhook Configuration

Proper webhook configuration is essential for several reasons:

1.  **Real-time Updates**: Receive instant notifications about payment events, enabling immediate updates to your application's state and user experience.
    
2.  **Automated Workflows**: Trigger automated processes based on payment status, such as updating order status, sending confirmation emails, or initiating refund procedures.
    
3.  **Reliable Integration**: Ensure a robust connection between KS Pay and your payment gateway, minimizing the risk of missed events or data inconsistencies.
    

## 1. Step-by-Step Webhook Configuration Guide

### **Step 1: Accessing the Applications Section in Kalp Studio**

-   Begin by logging into your Kalp Studio account. Open the [Kalp Studio website](https://accounts.kalp.studio/login?redirect_url=https://console.kalp.studio "https://accounts.kalp.studio/login?redirect_url=https://console.kalp.studio") and log in with your credentials.
    

Open image-20250303-122607.png

![image-20250303-122607.png](blob:https://p2eprojects.atlassian.net/0b203913-4bd1-4272-a7ee-1f8adbcb75e3#media-blob-url=true&id=b9867793-97da-4805-bcca-d0339667683a&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=image-20250303-122607.png&size=33601&width=825&height=665&alt=image-20250303-122607.png)

-   Once logged in, you will be directed to the main dashboard.
    
-   On the left-hand side of the screen, you'll find a navigation menu. This menu contains various options, including "Personal Info," "Applications," and "Settings”, as shown in the screenshot below.
    

Open image-20250402-054911.png

![image-20250402-054911.png](blob:https://p2eprojects.atlassian.net/cf54617e-72b1-4704-a590-1af6aa6a4345#media-blob-url=true&id=99b4c78b-49a5-47f9-b18a-e11922f7105d&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=image-20250402-054911.png&size=115475&width=1679&height=716&alt=image-20250402-054911.png)

-   Locate the "Applications" option within this menu. It is highlighted in the screenshot below.
    

Open image-20250402-063759.png

![image-20250402-063759.png](blob:https://p2eprojects.atlassian.net/63b8bbf4-0b06-4d29-a874-8a9ce35e50d8#media-blob-url=true&id=d21284b7-34e6-4ce4-bc36-f57150ca81ea&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=image-20250402-063759.png&size=138561&width=1679&height=716&alt=image-20250402-063759.png)

### **Step 2: Navigating to KS Pay from the Applications List**

-   Click on the Explore KS Pay button, as highlighted in the screenshot below, to go to the KS Pay dashboard.
    

Open image-20250402-063819.png

![image-20250402-063819.png](blob:https://p2eprojects.atlassian.net/1c74ad9a-2ca7-4323-afed-d0df28abef99#media-blob-url=true&id=fb7bedf4-655f-4b27-9021-256a5a4b0ea1&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=image-20250402-063819.png&size=140161&width=1679&height=716&alt=image-20250402-063819.png)

-   On the main dashboard, you'll see a list of all registered apps with details such as App ID, App Name, Email, and Country.
    

Open image-20241008-102441.png

![image-20241008-102441.png](blob:https://p2eprojects.atlassian.net/bdca56ea-6b0e-474d-aa54-0b99c63caced#media-blob-url=true&id=416d1fdd-2c6d-4202-8387-7abf6eaeef7c&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=image-20241008-102441.png&size=88083&width=1900&height=689&alt=image-20241008-102441.png)

-   Locate the app for which you want to view transactions.
    

### **Step 4: Open the App Overview**

1.  Click on the app name from the list to open the **App Overview**.
    
    Open image-20250402-064658.png
    
    ![image-20250402-064658.png](blob:https://p2eprojects.atlassian.net/82410828-cfcc-494d-afbd-25dc5dda2e0e#media-blob-url=true&id=28d6eec1-a558-4e8b-810d-9c916b215e20&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=image-20250402-064658.png&size=96868&width=1676&height=740&alt=image-20250402-064658.png)
    

### **Step 5: Navigate to the Settings Tab**

On the left sidebar, click on **Settings**.

Open ad8.png

![ad8.png](blob:https://p2eprojects.atlassian.net/12ddd208-bfd9-440f-926c-c574d72863f1#media-blob-url=true&id=0ed29b08-d979-4d52-84ff-f70d4f18bed3&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=ad8.png&size=23781&width=1907&height=419&alt=ad8.png)

### **Step 6: Accessing Webhook Configuration in KS Pay**

1.  Select the specific App ID for configuration
    

Open image-20250220-060016.png

![image-20250220-060016.png](blob:https://p2eprojects.atlassian.net/64f04302-3808-4c81-943f-0de53ec48261#media-blob-url=true&id=c8742a6c-286e-4abe-92fa-3d1d75c113d1&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=image-20250220-060016.png&size=78398&width=1536&height=349&alt=image-20250220-060016.png)

2.  Navigate to "Settings" > "Payment Gateway Settings"
    

Open image-20250220-060103.png

![image-20250220-060103.png](blob:https://p2eprojects.atlassian.net/83ec684b-24c2-4176-ab97-bba59f4c736f#media-blob-url=true&id=12d47cd4-5ed2-4633-8c5e-8530479c2fab&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=image-20250220-060103.png&size=50724&width=1913&height=570&alt=image-20250220-060103.png)

3.  Access the configuration for your payment gateway (e.g., Razorpay)
    

## **2. Configuring Webhook in Your Payment Gateway (Razorpay)**

### **Step 1: Obtain Webhook URL and Secret from KS Pay**

Within the "Webhook" configuration step, you will find two critical pieces of information:

Open image-20250220-060140.png

![image-20250220-060140.png](blob:https://p2eprojects.atlassian.net/4ad46bcb-26b9-4b2b-82bb-7312138b7a35#media-blob-url=true&id=0b1240e6-5b02-420b-81a8-69c751a7d41e&collection=contentId-410681353&contextId=410681353&width=1731&height=618&alt=image-20250220-060140.png)

-   **URL**: The unique endpoint provided by KS Pay for receiving webhook notifications
    
-   **SECRET**: A secret key used to verify the authenticity of webhook requests
    

Carefully copy both the URL and the SECRET for use in the next step.

### **Step 2: Configure the Webhook in Your Payment Gateway**

Open image-20241015-051238.png

![image-20241015-051238.png](blob:https://p2eprojects.atlassian.net/d1f86090-b1d7-4067-ad6d-61c9b6e5ca76#media-blob-url=true&id=32ac33b5-c3ac-4ced-ac9b-1b559b8f896a&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=image-20241015-051238.png&size=379025&width=1663&height=763&alt=image-20241015-051238.png)

The test Key ID in Razorpay is a security credential used for authenticating API requests in the test environment. It is part of a pair of credentials, along with the API Key (also known as Key Secret), that allows developers to test their integration with Razorpay's payment gateway without processing real transactions

It is used specifically for testing and development purposes, allowing users to simulate payment flows without affecting real accounts or transactions

-   Log in to your Razorpay dashboard.
    
-   Navigate to the webhook settings. This is typically located within the "Settings" or "Developers" section of your Razorpay account.
    
-   Create a new webhook configuration or edit an existing one.
    

Open image-20241015-051958.png

![image-20241015-051958.png](blob:https://p2eprojects.atlassian.net/087b8807-df0d-4e9f-91ba-704daab8510b#media-blob-url=true&id=994c5299-b42e-4c63-a63f-6fa44586ed1d&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=image-20241015-051958.png&size=300024&width=1559&height=764&alt=image-20241015-051958.png)

**Enter the Webhook URL:** Paste the Webhook URL copied from KS Pay into the designated "Webhook URL" field within your payment gateway's settings.

Open image-20241015-052312.png

![image-20241015-052312.png](blob:https://p2eprojects.atlassian.net/745b1023-bcb1-4e73-a875-21d6fc03c5ce#media-blob-url=true&id=66a406af-b365-49c3-afc5-8a72dc1cd9b0&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=image-20241015-052312.png&size=494310&width=1429&height=740&alt=image-20241015-052312.png)

**Enter the Webhook Secret:** Paste the SECRET copied from KS Pay into the "Secret" or "Webhook Secret" field in your payment gateway's settings. This is crucial for security.

**Select Active Events:** Choose the specific events for which you want to receive webhook notifications.

**Testing Your Webhook Configuration:**

-   After configuring the webhook in your payment gateway, it's essential to verify that it's working correctly.
    

## **3. Testing Your Webhook Configuration**

After configuring the webhook in your payment gateway, it is crucial to verify its functionality through thorough testing.

## **4. Finalizing Configuration in KS Pay**

-   After successfully configuring the webhook within your payment gateway and verifying that it's working, return to the KS Pay interface.
    

Open image-20250402-110934.png

![image-20250402-110934.png](blob:https://p2eprojects.atlassian.net/c6ed7a5d-44e4-4a54-b06e-0ac1e241e99e#media-blob-url=true&id=211de745-2400-4a41-a72d-4fa3db8e8a5f&collection=contentId-410681353&contextId=410681353&mimeType=image%2Fpng&name=image-20250402-110934.png&size=52207&width=1682&height=517&alt=image-20250402-110934.png)

-   Click the "**Mark as done**" button. This signals to KS Pay that the webhook integration step is complete.