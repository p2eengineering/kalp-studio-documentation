<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# **How to Add Credentials and Get Them Verified on KS Pay?**
**
Integrating a payment gateway with KS Pay requires setting up credentials and verifying them, enabling secure transaction processing for your platform. Follow this step-by-step guide to add and verify credentials on KS Pay.

### **Step 1: Add a Payment Gateway**

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Pay+articles+stg/add+creds/ac1.png)

-   **Steps 1-3 (Credentials, Webhook, and NPM Integration)** are initially set up by the merchant.
    
-   **Create an Order**: The merchant has one attempt to create an order. If it fails, they must re-enter payment gateway credentials and resubmit the request, granting one additional attempt.
    
-   **Verification**: Based on the response to the order creation, the first three steps will be verified.
    
-   **Step 4 (Security)**: Once the first three steps are confirmed, the merchant can proceed to complete the Security step.
    

### **Step 2: Enter Gateway Credentials**
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Pay+articles+stg/add+creds/ac2.png)

**Retrieve Credentials**: Get your **Client ID** and **Client Secret** from the respective payment gateway's dashboard:

-   For **Razorpay**, you'll need both the Key ID and Key Secret.
    
-   For **Cashfree**, only the Client ID and Client Secret are required.
    

**Enter Credentials in KS Pay**:

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Pay+articles+stg/add+creds/ac3.png)

-   Input the **Client ID** and **Client Secret** fields in the KS Pay interface.
    
-   Select the **Payment Modes** that you wish to enable (Debit Card, UPI, Net Banking, Wallet, Credit Card).
    
-   Click **Submit** to save your credentials.
    

### **Step 3: Configure the Webhook (Razorpay Only)**

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Pay+articles+stg/add+creds/ac4.png)

1.  **Copy the Webhook URL and Secret Key** from the KS Pay platform.
    
2.  **Set Up Webhook on Razorpay**:
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Pay+articles+stg/add+creds/ac5.png)

-   In the Razorpay dashboard, navigate to **Webhooks** and click on **Add New Webhook**.
    
-   Paste the **Webhook URL** and **Secret Key** into the fields provided.
    
-   Select the events you want to track, such as **payment.captured** and **payment.failed**.
    
-   Save the configuration, completing the webhook setup.
    

This step ensures that Razorpay can communicate with KS Pay, updating you about specific payment events automatically.

### **Step 4: NPM Integration**

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Pay+articles+stg/add+creds/ac6.png)

1.  **Click on the NPM Integration Link**: Once on the **NPM Integration** step, click the provided link to access the integration document.
    
2.  **Follow the Steps**: The document will guide you through setting up KS Pay with your application using NPM, allowing seamless integration with your platform.
    

### **Step 5: Security and Verification**

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/KS+Pay+articles+stg/add+creds/ac7.png)

1.  After completing the previous steps, proceed to the **Security** section to finalize the integration.
    
2.  KS Pay will then generate a **Public API Key** and a **Secret API Key**. These keys are essential for adding KS Pay’s payment capabilities to your website or application.
    
3.  Enter these keys on your platform to enable secure and verified transactions.
    

### **Create Orders**

Once all credentials, webhook, and NPM integration steps are verified, you’re ready to start processing transactions through KS Pay. With the API keys provided, you can create orders and enable seamless payment processing for your customers.

By following these steps, you can successfully add, verify, and secure payment gateway credentials on KS Pay, allowing you to provide a secure payment experience on your platform.