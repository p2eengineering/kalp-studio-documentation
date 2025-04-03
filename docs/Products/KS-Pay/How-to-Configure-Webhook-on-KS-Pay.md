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
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh1.png)

-   Once logged in, you will be directed to the main dashboard.
    
-   On the left-hand side of the screen, you'll find a navigation menu. This menu contains various options, including "Personal Info," "Applications," and "Settings”, as shown in the screenshot below.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh2.png)

-   Locate the "Applications" option within this menu. It is highlighted in the screenshot below.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh3.png)

### **Step 2: Navigating to KS Pay from the Applications List**

-   Click on the Explore KS Pay button, as highlighted in the screenshot below, to go to the KS Pay dashboard.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh4.png)

-   On the main dashboard, you'll see a list of all registered apps with details such as App ID, App Name, Email, and Country.
    
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh5.png)

-   Locate the app for which you want to view transactions.
    

### **Step 4: Open the App Overview**

1.  Click on the app name from the list to open the **App Overview**.
    
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh6.png)
    

### **Step 5: Navigate to the Settings Tab**

On the left sidebar, click on **Settings**.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh7.png)

### **Step 6: Accessing Webhook Configuration in KS Pay**

1.  Select the specific App ID for configuration
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh8.png)

2.  Navigate to "Settings" > "Payment Gateway Settings"
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh9.png)

3.  Access the configuration for your payment gateway (e.g., Razorpay)
    

## **2. Configuring Webhook in Your Payment Gateway (Razorpay)**

### **Step 1: Obtain Webhook URL and Secret from KS Pay**

Within the "Webhook" configuration step, you will find two critical pieces of information:

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh10.png)

-   **URL**: The unique endpoint provided by KS Pay for receiving webhook notifications
    
-   **SECRET**: A secret key used to verify the authenticity of webhook requests
    

Carefully copy both the URL and the SECRET for use in the next step.

### **Step 2: Configure the Webhook in Your Payment Gateway**

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh11.png)

The test Key ID in Razorpay is a security credential used for authenticating API requests in the test environment. It is part of a pair of credentials, along with the API Key (also known as Key Secret), that allows developers to test their integration with Razorpay's payment gateway without processing real transactions

It is used specifically for testing and development purposes, allowing users to simulate payment flows without affecting real accounts or transactions

-   Log in to your Razorpay dashboard.
    
-   Navigate to the webhook settings. This is typically located within the "Settings" or "Developers" section of your Razorpay account.
    
-   Create a new webhook configuration or edit an existing one.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh12.png)

**Enter the Webhook URL:** Paste the Webhook URL copied from KS Pay into the designated "Webhook URL" field within your payment gateway's settings.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh13.png)

**Enter the Webhook Secret:** Paste the SECRET copied from KS Pay into the "Secret" or "Webhook Secret" field in your payment gateway's settings. This is crucial for security.

**Select Active Events:** Choose the specific events for which you want to receive webhook notifications.

**Testing Your Webhook Configuration:**

-   After configuring the webhook in your payment gateway, it's essential to verify that it's working correctly.
    

## **3. Testing Your Webhook Configuration**

After configuring the webhook in your payment gateway, it is crucial to verify its functionality through thorough testing.

## **4. Finalizing Configuration in KS Pay**

-   After successfully configuring the webhook within your payment gateway and verifying that it's working, return to the KS Pay interface.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh14.png)

-   Click the "**Mark as done**" button. This signals to KS Pay that the webhook integration step is complete.