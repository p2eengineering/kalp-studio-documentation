<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# How to Integrate NPM on KS Pay?

Integrating NPM on KS Pay enables seamless communication between your application and the KS Pay platform, allowing you to manage transactions, process payments, and receive real-time updates efficiently. This guide will take you through the steps to set up NPM integration on KS Pay.

### **Step 1: Access the NPM Integration Section**

Open image-20241015-053717.png

![image-20241015-053717.png](blob:https://p2eprojects.atlassian.net/3fdfc7c3-ba31-4e5d-8939-a6fb204999f0#media-blob-url=true&id=b9bb4829-0b70-4fee-8715-791850483f79&collection=contentId-410779681&contextId=410779681&width=1584&height=753&alt=image-20241015-053717.png)

1.  **Navigate to NPM Integration**: In the KS Pay dashboard, go to **Settings** and select the **Add Gateway** option.
    
2.  **Proceed to NPM Integration**: Once you've added your gateway and configured your webhook, you’ll reach the **NPM Integration** step. Here, you’ll find a link to the integration document.
    

### **Step 2: Follow the NPM Integration Document**

Open image-20241015-053834.png

![image-20241015-053834.png](blob:https://p2eprojects.atlassian.net/b11722e3-e8d0-4fb1-a82e-737558c53b65#media-blob-url=true&id=7a3d394b-df27-4641-ac7d-95d30cbd9ced&collection=contentId-410779681&contextId=410779681&width=1584&height=753&alt=image-20241015-053834.png)

1.  **Click on the Integration Link**: Click on the link provided under the **Integration Document** section. This will open a step-by-step guide for installing and integrating KS Pay with your application using NPM.
    
2.  **Install KS Pay NPM Package**: Open your terminal and run the command provided in the document to install the KS Pay package. It should look something like this:  
      
    
    Open image-20241015-054151.png
    
    ![image-20241015-054151.png](blob:https://p2eprojects.atlassian.net/6655cc5b-886d-4cfd-96cf-b0c138b1d84a#media-blob-url=true&id=071b2b94-54f2-4967-ae35-25000ad28800&collection=contentId-410779681&contextId=410779681&width=1309&height=757&alt=image-20241015-054151.png)
    
3.  This package contains all the necessary methods for interacting with KS Pay.
    
4.  Customize this code with your **reference number**, **amount**, and other required parameters as described in the integration guide.
    
5.  **Configure Headers**: Set up the headers with your **App Signature** and **Environment URL** to ensure secure communication between your app and KS Pay.
    

### **Step 3: Complete and Test the Integration**

**Test Your Integration**:

1.  After configuring your code, test the integration by initiating a sample transaction from your application. This test will help ensure that your application is successfully connected to KS Pay.
    
2.  Confirm that transaction updates, such as **payment successful** or **payment failed**, are being received correctly in your application.
    

**Generate API Keys**:

-   After completing NPM integration, KS Pay will generate a **Public API Key** and a **Secret API Key** for your platform. These keys are essential for secure and authenticated transactions.
    
-   Use these keys on your website or application to enable payment functionality for your customers.
    

### **Step 4: Finalize Security**

**Security Verification**:

1.  Once NPM integration is complete, proceed to the **Security** section in KS Pay to verify your setup.
    
2.  KS Pay will verify all integrations and ensure your platform is securely connected, allowing you to start processing transactions immediately.
    

Integrating NPM on KS Pay allows you to connect your application to KS Pay’s payment platform, providing secure, reliable, and real-time transaction processing. By following these steps, you can complete the NPM setup, test the connection, and generate API keys to enable seamless payment capabilities for your customers. This integration is essential for automating payment workflows and keeping track of payment statuses directly within your application.