<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# **How to generate API Key for SMS?**

Application Programming Interfaces (APIs) are essential tools for different software applications to communicate with each other. When using services like SMS messaging programmatically, an API Key acts as a unique identifier and secret token for authentication. It ensures that only authorized applications can access your account and use the service, preventing unauthorized usage and securing your credits.

This guide will walk you through the straightforward process of generating a new API Key specifically for the SMS service within the Kalp Studio platform, using visual steps based on the platform's interface.

## Step-by-Step Guide to Generating Your SMS API Key

### **Step 1: Navigate to API Keys**

-   Log in to your dashboard.
    
-   On the left-hand sidebar menu, locate and click on the **"API Keys"** option. This section manages all your API credentials for different services offered by the platform.

![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/emailsms/sms/genapi/g1.png)

### **Step 2: Initiate New API Key Creation**

-   Once you are on the "API Keys" page, look towards the top-right corner of the main content area.

![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/emailsms/sms/genapi/g2.png)

-   Click on the **"+ New API Key"** button. This action will trigger the process for generating a new key.


![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/emailsms/sms/genapi/g3.png)

### **Step 3: Configure API Key Details**

-   A pop-up window titled "New API Key for SMS Service" will appear.

![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/emailsms/sms/genapi/g4.png)

-   You need to provide the following information:
    
    -   **Key Name (Required):** Enter a descriptive name for your key. This helps you identify the key's purpose later (e.g., "Project X SMS Integration", "Test SMS Key").
        
    -   **Key Description (Optional):** You can add a more detailed description if needed, explaining where or how this specific key will be used.
        
-   Fill in the "Key Name" field. Adding a description is good practice but not mandatory.
    

### **Step 4: Create the Key**

-   After filling in the necessary details, click the **"Create"** button within the pop-up window.

![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/emailsms/sms/genapi/g5.png)

**Step 5: Confirmation and Key Access**

-   Upon successful creation, the pop-up window will close.
    
-   A confirmation message (e.g., "success") will appear briefly at the top-right of the screen.
    
-   You will be returned to the "API Keys" page, where your newly generated key will now be listed in the table.
    

![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/emailsms/sms/genapi/g6.png)

### **Step 6: View and Manage Your Key**

The table will display your new key's details, including:

-   The **Key Name** you provided.
    
-   The **API Auth Key** itself (usually partially masked for security, with an option to copy). **This is the actual key you will use in your applications.**
    
-   The **Date Created**.
    
-   The **Status** (indicated by a toggle switch). You can usually disable/enable keys using this toggle.
    

Copy the generated `API Auth Key` immediately and store it securely. For security reasons, the full key might only be displayed once upon creation.


![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/emailsms/sms/genapi/g7.png)

## Conclusion

Generating an API key for the Kalp Studio SMS service is a simple process involving navigating to the API Keys section, initiating creation, providing a name, and confirming. This key is crucial for authenticating your requests when integrating the SMS service into your applications or workflows. Always remember to keep your API keys confidential and manage their status actively to ensure the security and integrity of your account and services. With your new key generated, you are ready to start sending SMS messages via API.