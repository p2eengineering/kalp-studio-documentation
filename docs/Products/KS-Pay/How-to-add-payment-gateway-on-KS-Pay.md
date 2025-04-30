<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# **How to add Payment Gateway on KS Pay?**

Integrating a payment gateway is a crucial step in enabling your application to process transactions. This article will guide you through the process of adding a payment gateway on KS Pay, step-by-step.

**Before You Begin:**

Please ensure you have generated your API Key before proceeding. This is a prerequisite for adding payment gateways. If you haven't done so yet please refer to our article on [How to generate API Key](https://docs.kalp.studio/Products/KS-Pay/How-to-generate-API-Key/).

### Navigate to Settings

Start by accessing the "Settings" section of your KS Pay dashboard. This is located in the left sidebar menu.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/addpg/apg1.png)

### Access Payment Gateway Settings

Within the "Settings" section, locate and click the "Payment Gateway Settings" tab.

### Initiate Gateway Addition

You'll see a "Payment Gateway" section and an "+ Add Gateway" button, click this button to start the gateway addition process.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/addpg/apg2.png)

## **Steps to Add a Payment Gateway:**

### Step 1: Credentials Configuration

You will be directed to the first step - "Credentials". This is where you'll need to configure your gateway settings.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/addpg/apg3.png)

-   **Select Currency**: From the dropdown, select the currency that this gateway will handle (USD, Rupees, etc).
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/addpg/apg4.png)

-   **Gateway Selection:** Choose a currency (e.g., USD, Rupees). This displays compatible payment gateways (e.g., PayPal for USD, Cashfree/Razorpay for Rupees).
    
-   **Client ID & Secret:** Enter your payment gateway's provided Client ID and Secret. Accuracy is essential for secure transactions.
    
-   **Payment Modes:** Select the desired payment methods (e.g., Net Banking, Wallet, UPI, Card) your users will use with this gateway.
    
-   **Submit:** Once completed, click "Submit."
    

### Step 2: Webhook Configuration


Upon submitting the credentials successfully, you will be moved to the next step "Webhook."

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/addpg/apg5.png)

-   The system will generate a webhook URL. This URL is essential for your chosen payment gateway to communicate transaction updates back to your application.
    
-   Once you have configured the webhook on the payment gateway side, click the "Mark as done" button to move on to the next step.
    

### Step 3: NPM Integration

Now you will be on the "NPM Integration" step.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/addpg/apg6.png)

-   To complete this step, you'll need to integrate the provided SDK into your application. You can find more information on the Integration document (in our example, "KS-PAY PAYMENT PACKAGE") by clicking on it. This document contains instructions and the code to install and utilize the package, and also links to the NPM page to further understand the package information.
    
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/addpg/apg7.png)

-   After integrating the SDK and verifying the installation is correct, click "Mark as done".
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/addpg/apg8.png)

### Step 4: Security Configuration

After the previous step is marked as done, you will be on the final step, "Security".

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/addpg/apg9.png)

-   Enter your application's domain name into the input field and then click “Mark as done”.
    

### **Verification and Order Creation**

Once you have completed all steps and have marked each step as done, your payment gateway setup is complete!

Now that the payment gateway is configured, you should be able to successfully create orders in your system.

### **Conclusion**

By following these steps, you should be able to set up your payment gateway effectively and securely. If you have any questions or face any issues, please refer to our help documentation or contact customer support.