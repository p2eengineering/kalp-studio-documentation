<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# How to Configure Webhook on KS Pay?

Configuring a webhook is essential for enabling real-time updates between your payment gateway and KS Pay. This guide walks you through setting up a webhook, specifically for Razorpay, on the KS Pay platform. By configuring the webhook, you ensure that payment events are instantly communicated to KS Pay, allowing you to track and manage transactions seamlessly.

### **Step 1: Obtain the Webhook URL and Secret Key from KS Pay**

Open image-20241015-051149.png

![image-20241015-051149.png](blob:https://p2eprojects.atlassian.net/1f05b948-f625-4736-928d-fde586ba388f#media-blob-url=true&id=7e1ae8ac-8b7b-4b7b-a2fb-b834deab51dd&collection=contentId-410681353&contextId=410681353&width=1606&height=758&alt=image-20241015-051149.png)

1.  **Navigate to the Add Gateway Section**: In the KS Pay dashboard, under **Settings**, click on **Add Gateway**.
    
2.  **Select Razorpay**: In the list of gateway options, choose **Razorpay**. Once selected, KS Pay will generate a **Webhook URL** and a **Secret Key** for you.
    
3.  **Copy the Webhook Details**: You will need both the **URL** and **Secret Key** to set up the webhook on the Razorpay platform.
    

### **Step 2: Configure Webhook on Razorpay**

Open image-20241015-051238.png

![image-20241015-051238.png](blob:https://p2eprojects.atlassian.net/e1f28e72-87c7-45da-98d9-9b432b173d4e#media-blob-url=true&id=32ac33b5-c3ac-4ced-ac9b-1b559b8f896a&collection=contentId-410681353&contextId=410681353&width=1663&height=763&alt=image-20241015-051238.png)

1.  **Log in to the Razorpay Dashboard**: Go to your Razorpay account and navigate to the **Account & Settings** section, then select **Webhooks**.
    
2.  **Add a New Webhook**:
    

-   Click on **Add New Webhook** to start the configuration.
    
-   Paste the **Webhook URL** from KS Pay into the **Webhook URL** field.
    
-   Enter the **Secret Key** provided by KS Pay into the **Secret** field. This key helps secure the communication between Razorpay and KS Pay.
    

**3. Select Events**:

Open image-20241015-051958.png

![image-20241015-051958.png](blob:https://p2eprojects.atlassian.net/1b5061b8-3784-4114-9178-701b9342fc3f#media-blob-url=true&id=c61ba2ef-8b26-41c8-a64e-225afd952a60&collection=contentId-410681353&contextId=410681353&width=1559&height=764&alt=image-20241015-051958.png)

1.  In the **Active Events** section, check the events you want Razorpay to notify KS Pay about.
    

You can select additional events as needed, depending on the specific notifications you want KS Pay to receive.

Open image-20241015-052312.png

![image-20241015-052312.png](blob:https://p2eprojects.atlassian.net/1813a08f-b7af-462e-9db4-ab8784465017#media-blob-url=true&id=704f9669-1460-466e-be87-7237f414d45d&collection=contentId-410681353&contextId=410681353&width=1429&height=740&alt=image-20241015-052312.png)

2.  **Save the Webhook Configuration**: After you’ve entered all the details and selected the events, click **Create Webhook**. Razorpay will confirm that the webhook has been created and is active.
    

### **Step 3: Verification on KS Pay**

Open image-20241015-052223.png

![image-20241015-052223.png](blob:https://p2eprojects.atlassian.net/58ce7abf-82f6-42fc-b1b3-aa854a7f4019#media-blob-url=true&id=934a4d03-c337-4e8d-8907-e73c376da799&collection=contentId-410681353&contextId=410681353&width=1716&height=684&alt=image-20241015-052223.png)

1.  **Return to KS Pay**: Once the webhook is configured on Razorpay, go back to the KS Pay dashboard.
    
2.  **Verify Webhook Configuration**: In KS Pay, the webhook status should now reflect as **Pending Verification**. It will automatically update to **Verified** once the connection is established and tested successfully.
    
3.  **Mark as Done**: After verification, click on **Mark as Done** to finalize the webhook setup.
    

### **Test and Monitor**

1.  **Test the Webhook**: To ensure everything is set up correctly, you can initiate a test transaction on Razorpay. You should see the corresponding event details reflected in KS Pay.
    
2.  **Monitor Webhook Activity**: In the Razorpay dashboard, you can view the webhook's event logs to monitor and troubleshoot any issues.
    

Configuring a webhook on KS Pay is a straightforward process that enables real-time payment event updates. By setting up a webhook, you enhance the transaction tracking capability on KS Pay, allowing for a seamless, automated, and secure payment experience for your platform.