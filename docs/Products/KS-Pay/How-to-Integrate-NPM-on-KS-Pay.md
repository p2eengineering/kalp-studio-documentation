<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# **How to Integrate NPM on KS Pay?**

Build a secure and compliant payment infrastructure for your applications by integrating the KS-PAY Payment Package via NPM. This article provides a detailed and professional guide to the integration process, ensuring adherence to best practices and minimizing development time.

## Prerequisites

Before beginning the integration process, ensure you have the following prerequisites in place:

1.  **Node.js and NPM**:
    

-   KS-PAY relies on NPM to install dependencies in React.
    
-   Download and install Node.js (which includes NPM) from [![](https://nodejs.org/static/images/favicons/favicon.png)Node.js — Run JavaScript Everywhere](https://nodejs.org/en) .
    
-   Verify the installation by running `node -v` and `npm -v` in your terminal.
    

2.  **React Project**:
    

-   You need an existing React project or be prepared to create a new one.
    
-   You can use tools like create-react-app, Vite, or any other React project setup tool.
    

3.  **Git**:
    

-   Git is required for version control and package management.
    
-   Install Git from [![](https://git-scm.com/favicon.ico)Git - Downloads](https://git-scm.com/downloads) if not already installed.
    
-   Verify the installation by running `git --version` in your terminal.
    

4.  **IDE/Text Editor**:
    

-   Choose an IDE or text editor of your preference for writing code.
    
-   Popular options include Visual Studio Code, WebStorm, or Sublime Text.
    

### **Step 1: Accessing the Applications Section in Kalp Studio**

-   Begin by logging into your Kalp Studio account. Open the [Kalp Studio website](https://accounts.kalp.studio/login?redirect_url=https://console.kalp.studio "https://accounts.kalp.studio/login?redirect_url=https://console.kalp.studio") and log in with your credentials.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm1.png)

-   Once logged in, you will be directed to the main dashboard.
    
-   On the left-hand side of the screen, you'll find a navigation menu. This menu contains various options, including "Personal Info," "Applications," and "Settings”, as shown in the screenshot below.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm2.png)

-   Locate the "Applications" option within this menu. It is highlighted in the screenshot below.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm3.png)

### **Step 2: Navigating to KS Pay from the Applications List**

-   Click on the Explore KS Pay button, as highlighted in the screenshot below, to go to the KS Pay dashboard.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm4.png)

### **Step 3: Access the KS Pay Dashboard**

-   On the main dashboard, you'll see a list of all registered apps with details such as App ID, App Name, Email, and Country.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm5.png)

- Locate the app for which you want to view transactions. 

- Click on the app name from the list to open the **App Overview**.
    
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh6.png)
    

### **Step 4: Navigate to the Settings Tab**

On the left sidebar, click on **Settings**.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/configwebhook/wh7.png)
    

### **Step 5: Adding a Payment Gateway**



1.  Click on the "+ Add Gateway" button, as highlighted in the screenshot below.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm6.png) 

Add Credentials first, then configure webhook.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm7.png)

For Configuring Webhook: Refer [How to Configure Webhook on KS Pay](https://docs.kalp.studio/Products/KS-Pay/How-to-Configure-Webhook-on-KS-Pay/)

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm8.png)

### **Step 6: NPM Installation**

Once you have the prerequisites in place, follow these steps to install the KS-PAY package:

1. Click on KS-PAYMENT PACKAGE, as shown in the below screenshot.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm9.png)

2. You will be redirected to NPM portal.
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm10.png)

3. Copy the installation link, as shown in the screenshot below.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm11.png)

4.  Open your terminal and navigate to your React project directory.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm12.png)

5.  Run the following command to install the KS-PAY package:
    
    `npm i ks-pay-package-pvt`
    
6.  This command will download and install the KS-PAY package and its dependencies into your project.
    

## **Usage**

To implement the KS-PAY payment gateway in your React application:

1.  Import the `Gateways` component in your React component file:
    

`javascript import Gateways from "ks-pay-package-pvt";`

2.  Set up the necessary state and configuration. An example has been provided below.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm13.png)

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm14.png)

> **Example Configuration:** Adapt the configuration based on the package documentation and your specific payment requirements. You'll need to provide your API keys, callback URLs, and any other required parameters.
    

## **Step 7: Complete Integration**

1.  Mark as done after installing the package.
    

If the NPM integration is unsuccessful, reattempt the integration process.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/New+folder/inpm15.png)

2.  Move to the next Security section.
    

## **Step 8: Testing**

1.  **Sandbox Environment:** KS-PAY should provide a sandbox/testing environment. Configure your integration to use the sandbox environment for testing purposes. This environment simulates real transactions without actually charging any accounts.
    
2.  **Testing Scenarios:** Test various payment scenarios, including successful payments, failed payments, and edge cases.
    

Integrating NPM on KS Pay allows you to connect your application to KS Pay’s payment platform, providing secure, reliable, and real-time transaction processing. By following these steps, you can complete the NPM setup, test the connection, and generate API keys to enable seamless payment capabilities for your customers. This integration is essential for automating payment workflows and keeping track of payment statuses directly within your application.