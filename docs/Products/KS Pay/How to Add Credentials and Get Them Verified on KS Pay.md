<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# How to Add Credentials and Get Them Verified on KS Pay?

Integrating a payment gateway with KS Pay requires setting up credentials and verifying them, enabling secure transaction processing for your platform. Follow this step-by-step guide to add and verify credentials on KS Pay.

### **Step 1: Add a Payment Gateway**

Open image-20241015-055722.png

![image-20241015-055722.png](blob:https://p2eprojects.atlassian.net/085b8486-fa97-4d3d-946a-e7f2f9a9ef3c#media-blob-url=true&id=495a375e-be15-43e6-a271-54e903867e55&collection=contentId-410878000&contextId=410878000&width=1590&height=734&alt=image-20241015-055722.png)

-   **Steps 1-3 (Credentials, Webhook, and NPM Integration)** are initially set up by the merchant.
    
-   **Create an Order**: The merchant has one attempt to create an order. If it fails, they must re-enter payment gateway credentials and resubmit the request, granting one additional attempt.
    
-   **Verification**: Based on the response to the order creation, the first three steps will be verified.
    
-   **Step 4 (Security)**: Once the first three steps are confirmed, the merchant can proceed to complete the Security step.
    

### **Step 2: Enter Gateway Credentials**

Open image-20241015-061407.png

![image-20241015-061407.png](blob:https://p2eprojects.atlassian.net/862f2106-38b3-44da-9645-df4c3bc8f724#media-blob-url=true&id=43f745a9-63d3-4cda-af38-43f8c1481691&collection=contentId-410878000&contextId=410878000&width=1671&height=773&alt=image-20241015-061407.png)

**Retrieve Credentials**: Get your **Client ID** and **Client Secret** from the respective payment gateway's dashboard:

-   For **Razorpay**, you'll need both the Key ID and Key Secret.
    
-   For **Cashfree**, only the Client ID and Client Secret are required.
    

**Enter Credentials in KS Pay**:

Open image-20241015-061705.png

![image-20241015-061705.png](blob:https://p2eprojects.atlassian.net/40f8bdfa-07ae-4483-84d1-1112ed7d38da#media-blob-url=true&id=1990f4d3-8b87-4b6a-82e5-b6e703125857&collection=contentId-410878000&contextId=410878000&width=1608&height=770&alt=image-20241015-061705.png)

-   Input the **Client ID** and **Client Secret** fields in the KS Pay interface.
    
-   Select the **Payment Modes** that you wish to enable (Debit Card, UPI, Net Banking, Wallet, Credit Card).
    
-   Click **Submit** to save your credentials.
    

### **Step 3: Configure the Webhook (Razorpay Only)**

Open image-20241015-061759.png

![image-20241015-061759.png](blob:https://p2eprojects.atlassian.net/2ddf8515-f100-4cba-98ff-408082c7e3eb#media-blob-url=true&id=8078b5e4-0cc0-40bf-8694-25355516a516&collection=contentId-410878000&contextId=410878000&width=1714&height=682&alt=image-20241015-061759.png)

1.  **Copy the Webhook URL and Secret Key** from the KS Pay platform.
    
2.  **Set Up Webhook on Razorpay**:
    

Open image-20241015-061850.png

![image-20241015-061850.png](blob:https://p2eprojects.atlassian.net/99c204f4-23e5-424e-a1ee-51687d4cbba5#media-blob-url=true&id=799abc47-2744-4700-8ecb-f211b1e8c9ab&collection=contentId-410878000&contextId=410878000&width=1477&height=730&alt=image-20241015-061850.png)

-   In the Razorpay dashboard, navigate to **Webhooks** and click on **Add New Webhook**.
    
-   Paste the **Webhook URL** and **Secret Key** into the fields provided.
    
-   Select the events you want to track, such as **payment.captured** and **payment.failed**.
    
-   Save the configuration, completing the webhook setup.
    

This step ensures that Razorpay can communicate with KS Pay, updating you about specific payment events automatically.

### **Step 4: NPM Integration**

Open image-20241015-061937.png

![image-20241015-061937.png](blob:https://p2eprojects.atlassian.net/b32d2b79-d24d-434d-be05-9a4bad50bccb#media-blob-url=true&id=1b95427a-f5d0-49fe-b3bf-b5305fc570f0&collection=contentId-410878000&contextId=410878000&width=1588&height=743&alt=image-20241015-061937.png)

1.  **Click on the NPM Integration Link**: Once on the **NPM Integration** step, click the provided link to access the integration document.
    
2.  **Follow the Steps**: The document will guide you through setting up KS Pay with your application using NPM, allowing seamless integration with your platform.
    

### **Step 5: Security and Verification**

Open image-20241015-061954.png

![image-20241015-061954.png](blob:https://p2eprojects.atlassian.net/f0f4d218-9bc2-482d-b09b-5efc55ce2e45#media-blob-url=true&id=a71acbf4-ae44-4a3c-8384-03c129c9bcc7&collection=contentId-410878000&contextId=410878000&width=1722&height=711&alt=image-20241015-061954.png)

1.  After completing the previous steps, proceed to the **Security** section to finalize the integration.
    
2.  KS Pay will then generate a **Public API Key** and a **Secret API Key**. These keys are essential for adding KS Pay’s payment capabilities to your website or application.
    
3.  Enter these keys on your platform to enable secure and verified transactions.
    

### **Create Orders**

Once all credentials, webhook, and NPM integration steps are verified, you’re ready to start processing transactions through KS Pay. With the API keys provided, you can create orders and enable seamless payment processing for your customers.

By following these steps, you can successfully add, verify, and secure payment gateway credentials on KS Pay, allowing you to provide a secure payment experience on your platform.