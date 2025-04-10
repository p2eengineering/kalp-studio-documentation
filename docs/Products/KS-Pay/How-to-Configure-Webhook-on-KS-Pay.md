<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# **How to Configure Webhook on KS Pay?**

Webhooks are a crucial component in integrating KS Pay with external payment gateways, such as Razorpay. They facilitate real-time communication between systems, ensuring immediate updates on key events like successful payments, failed transactions, and disputes. This comprehensive guide outlines the process of configuring webhooks to enable seamless communication between KS Pay and your chosen payment gateway.

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
    

### **Step 3: Open the App Overview**

1.  Click on the app name from the list to open the **App Overview**.
    
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh6.png)
    

### **Step 4: Navigate to the Settings Tab**

On the left sidebar, click on **Settings**.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh7.png)

### **Step 5: Accessing Webhook Configuration in KS Pay**

1. Navigate to "Settings" > "Payment Gateway Settings"
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh8.png)

2. Access the configuration for your payment gateway (e.g., Razorpay)
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh9.png)

### **Step 6: Obtain Webhook URL and Secret from KS Pay**


Within the "Webhook" configuration step, you will find two critical pieces of information:


-   **URL**: The unique endpoint provided by KS Pay for receiving webhook notifications
    
-   **SECRET**: A secret key used to verify the authenticity of webhook requests
    

Carefully copy both the URL and the SECRET for use in the next step.

### **Step 7: Configure the Webhook in Your Payment Gateway (Razopay)**

-   Log in to your Razorpay dashboard.


    
-   Navigate to the Developer Section settings.
    
-   Create a new webhook configuration or edit an existing one.

**Enter the Webhook URL:** Paste the Webhook URL copied from KS Pay into the designated "Webhook URL" field within your payment gateway's settings.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh13.png)

**Enter the Webhook Secret:** Paste the SECRET copied from KS Pay into the "Secret" or "Webhook Secret" field in your payment gateway's settings. This is crucial for security.

**Select Active Events:** Choose the specific events for which you want to receive webhook notifications.

Click on **Create webhook** button. After the successful creation, the webhook will be automatically saved. 

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh14.png)


### **Step 8: Finalizing Configuration in KS Pay**

After  successfully configuring the webhook within your payment gateway and verifying that it's working, return to the KS Pay interface.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh15.png)

-   Click the "**Mark as done**" button. This signals to KS Pay that the webhook integration step is complete.