<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# How to add Payment Gateway on KS Pay?

Integrating a payment gateway is a crucial step in enabling your application to process transactions. This article will guide you through the process of adding a payment gateway on KS Pay, step-by-step.

**Before You Begin:**

Please ensure you have generated your API Key before proceeding. This is a prerequisite for adding payment gateways. If you haven't done so yet please refer to our article on [How to generate API Key](Products/KS-Pay/How-to-generate-API-Key.md).

### Navigate to Settings

Start by accessing the "Settings" section of your KS Pay dashboard. This is located in the left sidebar menu.

Open image-20250131-051103.png

![image-20250131-051103.png](blob:https://p2eprojects.atlassian.net/a3faf8f9-8ec1-48e0-b67f-d8efef47bf0d#media-blob-url=true&id=4bcd5ec9-0bca-43d4-8847-aafddfeaeb39&collection=contentId-407306352&contextId=407306352&mimeType=image%2Fpng&name=image-20250131-051103.png&size=26339&width=1911&height=368&alt=image-20250131-051103.png)

### Access Payment Gateway Settings

Within the "Settings" section, locate and click the "Payment Gateway Settings" tab.

### Initiate Gateway Addition

You'll see a "Payment Gateway" section and an "+ Add Gateway" button, click this button to start the gateway addition process.

Open image-20250131-051240.png

![image-20250131-051240.png](blob:https://p2eprojects.atlassian.net/06139456-5bd8-46d1-abd1-20f35ada788a#media-blob-url=true&id=9aacb956-3167-45ec-9ebf-973776494954&collection=contentId-407306352&contextId=407306352&mimeType=image%2Fpng&name=image-20250131-051240.png&size=27302&width=1911&height=368&alt=image-20250131-051240.png)

## **Steps to Add a Payment Gateway:**

### Step 1: Credentials Configuration

You will be directed to the first step - "Credentials". This is where you'll need to configure your gateway settings.

Open image-20250131-051314.png

![image-20250131-051314.png](blob:https://p2eprojects.atlassian.net/9a28ffd4-5ed0-4183-8911-7f214cc1f345#media-blob-url=true&id=4f919041-c286-4fb3-af30-cca4f6e025a6&collection=contentId-407306352&contextId=407306352&mimeType=image%2Fpng&name=image-20250131-051314.png&size=46661&width=1910&height=502&alt=image-20250131-051314.png)

-   **Select Currency**: From the dropdown, select the currency that this gateway will handle (USD, Rupees, etc).
    

Open image-20250131-051547.png

![image-20250131-051547.png](blob:https://p2eprojects.atlassian.net/0cca8a6b-3c41-4eb5-bdfb-8c55ad93f9de#media-blob-url=true&id=1835de91-2c33-4ed1-abb7-987a7292ce98&collection=contentId-407306352&contextId=407306352&mimeType=image%2Fpng&name=image-20250131-051547.png&size=57705&width=1909&height=754&alt=image-20250131-051547.png)

-   **Gateway Selection:** Choose a currency (e.g., USD, Rupees). This displays compatible payment gateways (e.g., PayPal for USD, Cashfree/Razorpay for Rupees).
    
-   **Client ID & Secret:** Enter your payment gateway's provided Client ID and Secret. Accuracy is essential for secure transactions.
    
-   **Payment Modes:** Select the desired payment methods (e.g., Net Banking, Wallet, UPI, Card) your users will use with this gateway.
    
-   **Submit:** Once completed, click "Submit."
    

### Step 2: Webhook Configuration

Open image-20250131-051611.png

![image-20250131-051611.png](blob:https://p2eprojects.atlassian.net/765c5cab-5d3f-4279-98de-05966425f035#media-blob-url=true&id=4c965646-86ae-4497-8fc1-fcfb876b7c4c&collection=contentId-407306352&contextId=407306352&mimeType=image%2Fpng&name=image-20250131-051611.png&size=45278&width=1911&height=534&alt=image-20250131-051611.png)

Upon submitting the credentials successfully, you will be moved to the next step "Webhook."

-   The system will generate a webhook URL. This URL is essential for your chosen payment gateway to communicate transaction updates back to your application.
    
-   Once you have configured the webhook on the payment gateway side, click the "Mark as done" button to move on to the next step.
    

### Step 3: NPM Integration

Now you will be on the "NPM Integration" step.

Open image-20250131-051659.png

![image-20250131-051659.png](blob:https://p2eprojects.atlassian.net/13b36b70-8bbf-4907-89e9-020d0f7cec99#media-blob-url=true&id=e647c1d4-3a26-4e73-9d72-d641bdc38ba4&collection=contentId-407306352&contextId=407306352&mimeType=image%2Fpng&name=image-20250131-051659.png&size=36890&width=1906&height=434&alt=image-20250131-051659.png)

-   To complete this step, you'll need to integrate the provided SDK into your application. You can find more information on the Integration document (in our example, "KS-PAY PAYMENT PACKAGE") by clicking on it. This document contains instructions and the code to install and utilize the package, and also links to the NPM page to further understand the package information.
    

Open image-20250131-051734.png

![image-20250131-051734.png](blob:https://p2eprojects.atlassian.net/959803a8-9b90-4c40-91a1-6eb2dc45316c#media-blob-url=true&id=e5a75aa7-0f64-422d-b4ac-d5eca52728b3&collection=contentId-407306352&contextId=407306352&mimeType=image%2Fpng&name=image-20250131-051734.png&size=86824&width=1499&height=799&alt=image-20250131-051734.png)

-   After integrating the SDK and verifying the installation is correct, click "Mark as done".
    

Open image-20250131-051744.png

![image-20250131-051744.png](blob:https://p2eprojects.atlassian.net/b48257ce-e0d9-4f06-9f09-43bd48304a71#media-blob-url=true&id=5ad7c958-b400-479b-a22b-b2f6723e69f8&collection=contentId-407306352&contextId=407306352&mimeType=image%2Fpng&name=image-20250131-051744.png&size=39615&width=1909&height=408&alt=image-20250131-051744.png)

### Step 4: Security Configuration

After the previous step is marked as done, you will be on the final step, "Security".

Open image-20250131-051820.png

![image-20250131-051820.png](blob:https://p2eprojects.atlassian.net/fa3dbf50-0c78-427c-978f-88f17302b1ad#media-blob-url=true&id=9d36c950-c61b-4d0a-96f9-d598d2547e84&collection=contentId-407306352&contextId=407306352&mimeType=image%2Fpng&name=image-20250131-051820.png&size=39029&width=1915&height=453&alt=image-20250131-051820.png)

-   Enter your application's domain name into the input field and then click “Mark as done”.
    

### **Verification and Order Creation**

Once you have completed all steps and have marked each step as done, your payment gateway setup is complete!

Now that the payment gateway is configured, you should be able to successfully create orders in your system.

### **Conclusion**

By following these steps, you should be able to set up your payment gateway effectively and securely. If you have any questions or face any issues, please refer to our help documentation or contact customer support.