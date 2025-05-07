<style> body {  font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# **How to generate API Key for SMS?**

Application Programming Interfaces (APIs) are essential tools for different software applications to communicate with each other. When using services like SMS messaging programmatically, an API Key acts as a unique identifier and secret token for authentication. It ensures that only authorized applications can access your account and use the service, preventing unauthorized usage and securing your credits.

This guide will walk you through the straightforward process of generating a new API Key specifically for the SMS service within the Kalp Studio platform, using visual steps based on the platform's interface.

## Step-by-Step Guide to Generating Your SMS API Key

### **Step 1: Navigate to API Keys**

-   Log in to your dashboard.
    
-   On the left-hand sidebar menu, locate and click on the **"API Keys"** option. This section manages all your API credentials for different services offered by the platform.

![image-20250506-042953.png](blob:https://p2eprojects.atlassian.net/527c0823-943b-4aa5-802c-a00c0cf012a4#media-blob-url=true&id=6ea23f4e-0e09-44a3-8bd0-169ba0ed5da7&collection=contentId-570818603&contextId=570818603&width=1696&height=660&alt=image-20250506-042953.png)

### **Step 2: Initiate New API Key Creation**

-   Once you are on the "API Keys" page, look towards the top-right corner of the main content area.

![image-20250506-043013.png](blob:https://p2eprojects.atlassian.net/82fb90d7-7b72-4c4b-81e4-5617cd7d3777#media-blob-url=true&id=a6909a1f-d817-4f38-a9ce-69d9a766b77d&collection=contentId-570818603&contextId=570818603&width=1696&height=660&alt=image-20250506-043013.png)

-   Click on the **"+ New API Key"** button. This action will trigger the process for generating a new key.


![image-20250506-043041.png](blob:https://p2eprojects.atlassian.net/f0af5262-30d7-4254-8394-fae5489a26d6#media-blob-url=true&id=d78ca079-6d8a-4284-a6ed-5484c5e1899f&collection=contentId-570818603&contextId=570818603&width=1694&height=510&alt=image-20250506-043041.png)

### **Step 3: Configure API Key Details**

-   A pop-up window titled "New API Key for SMS Service" will appear.

![image-20250506-043101.png](blob:https://p2eprojects.atlassian.net/3948a207-d8f2-4eb5-baea-b91b08805824#media-blob-url=true&id=b0b749ea-1b7b-45cd-899b-a17db4d49063&collection=contentId-570818603&contextId=570818603&width=1688&height=696&alt=image-20250506-043101.png)

-   You need to provide the following information:
    
    -   **Key Name (Required):** Enter a descriptive name for your key. This helps you identify the key's purpose later (e.g., "Project X SMS Integration", "Test SMS Key").
        
    -   **Key Description (Optional):** You can add a more detailed description if needed, explaining where or how this specific key will be used.
        
-   Fill in the "Key Name" field. Adding a description is good practice but not mandatory.
    

### **Step 4: Create the Key**

-   After filling in the necessary details, click the **"Create"** button within the pop-up window.


![image-20250506-043150.png](blob:https://p2eprojects.atlassian.net/3cf9f1f9-d394-48b6-b592-b01bc5df2045#media-blob-url=true&id=0b8a67ed-941e-4b0a-bc23-b19b0f2e12a2&collection=contentId-570818603&contextId=570818603&width=1681&height=786&alt=image-20250506-043150.png)

**Step 5: Confirmation and Key Access**

-   Upon successful creation, the pop-up window will close.
    
-   A confirmation message (e.g., "success") will appear briefly at the top-right of the screen.
    
-   You will be returned to the "API Keys" page, where your newly generated key will now be listed in the table.
    

![image-20250506-043229.png](blob:https://p2eprojects.atlassian.net/4fc3c5fa-2876-4019-b6d7-f918dc552503#media-blob-url=true&id=7476f9e8-5cd9-435d-b38a-fbf774609ba6&collection=contentId-570818603&contextId=570818603&width=1692&height=705&alt=image-20250506-043229.png)

### **Step 6: View and Manage Your Key**

The table will display your new key's details, including:

-   The **Key Name** you provided.
    
-   The **API Auth Key** itself (usually partially masked for security, with an option to copy). **This is the actual key you will use in your applications.**
    
-   The **Date Created**.
    
-   The **Status** (indicated by a toggle switch). You can usually disable/enable keys using this toggle.
    

Copy the generated `API Auth Key` immediately and store it securely. For security reasons, the full key might only be displayed once upon creation.


![image-20250506-043310.png](blob:https://p2eprojects.atlassian.net/b472e375-e0a9-4ad6-a216-a891dddbbe1a#media-blob-url=true&id=4ba80793-f282-469f-9226-7a95154428b3&collection=contentId-570818603&contextId=570818603&width=1700&height=617&alt=image-20250506-043310.png)

## Conclusion

Generating an API key for the Kalp Studio SMS service is a simple process involving navigating to the API Keys section, initiating creation, providing a name, and confirming. This key is crucial for authenticating your requests when integrating the SMS service into your applications or workflows. Always remember to keep your API keys confidential and manage their status actively to ensure the security and integrity of your account and services. With your new key generated, you are ready to start sending SMS messages via API.