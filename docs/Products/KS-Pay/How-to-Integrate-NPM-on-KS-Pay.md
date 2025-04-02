<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# How to Integrate NPM on KS Pay?

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
    

Open image-20250303-122607.png

![image-20250303-122607.png](blob:https://p2eprojects.atlassian.net/fc494e36-ce48-4d85-98bd-7af3b640ee62#media-blob-url=true&id=7a890cc6-684f-4145-8910-f59a2d23f567&collection=contentId-410779681&contextId=410779681&mimeType=image%2Fpng&name=image-20250303-122607.png&size=33601&width=825&height=665&alt=image-20250303-122607.png)

-   Once logged in, you will be directed to the main dashboard.
    
-   On the left-hand side of the screen, you'll find a navigation menu. This menu contains various options, including "Personal Info," "Applications," and "Settings”, as shown in the screenshot below.
    

Open image-20250402-054911.png

![image-20250402-054911.png](blob:https://p2eprojects.atlassian.net/75d6f95d-c66f-43b7-b4fc-8d1dcd3c1e0b#media-blob-url=true&id=a9c40dea-6e38-4b0c-a21d-4667ecdf1d4d&collection=contentId-410779681&contextId=410779681&mimeType=image%2Fpng&name=image-20250402-054911.png&size=115475&width=1679&height=716&alt=image-20250402-054911.png)

-   Locate the "Applications" option within this menu. It is highlighted in the screenshot below.
    

Open image-20250402-063759.png

![image-20250402-063759.png](blob:https://p2eprojects.atlassian.net/42d6d3ff-b116-4c7c-9a3a-36d9978b296f#media-blob-url=true&id=7cbb697a-abe7-4705-97b4-fb3100af5e19&collection=contentId-410779681&contextId=410779681&mimeType=image%2Fpng&name=image-20250402-063759.png&size=138561&width=1679&height=716&alt=image-20250402-063759.png)

### **Step 2: Navigating to KS Pay from the Applications List**

-   Click on the Explore KS Pay button, as highlighted in the screenshot below, to go to the KS Pay dashboard.
    

Open image-20250402-063819.png

![image-20250402-063819.png](blob:https://p2eprojects.atlassian.net/3c96c257-45c2-4121-a620-accb39b5099a#media-blob-url=true&id=f2e9f226-fef7-4f89-a799-801daf8d29cc&collection=contentId-410779681&contextId=410779681&mimeType=image%2Fpng&name=image-20250402-063819.png&size=140161&width=1679&height=716&alt=image-20250402-063819.png)

### **Step 3: Access the KS Pay Dashboard**

-   On the main dashboard, you'll see a list of all registered apps with details such as App ID, App Name, Email, and Country.
    

Open image-20241008-102441.png

![image-20241008-102441.png](blob:https://p2eprojects.atlassian.net/58246ca9-012d-4dc1-8207-a4e4b0c6a687#media-blob-url=true&id=261b12a1-a31e-49c5-88bf-b91c2256b40d&collection=contentId-410779681&contextId=410779681&mimeType=image%2Fpng&name=image-20241008-102441.png&size=88083&width=1900&height=689&alt=image-20241008-102441.png)

-   Locate the app for which you want to view transactions.
    

## **Adding a Payment Gateway**

Open image-20250223-073557.png

![image-20250223-073557.png](blob:https://p2eprojects.atlassian.net/bc432a82-854a-4b53-bf14-1fea04a1eb47#media-blob-url=true&id=664bd5c9-8603-48bb-86a4-5c96bfe82957&collection=contentId-410779681&contextId=410779681&width=1696&height=308&alt=image-20250223-073557.png)

1.  Click on the "+ Add Gateway" button.
    

For Step 1 (Credentials): Refer [How to add Razorpay payment gateway and setup rules for payment orchestration on KS Pay. - Payment Engine - Confluence](https://p2eprojects.atlassian.net/wiki/spaces/PE/pages/410878000 "https://p2eprojects.atlassian.net/wiki/spaces/PE/pages/410878000")

Open image-20250223-073757.png

![image-20250223-073757.png](blob:https://p2eprojects.atlassian.net/afed2dc3-8126-4bfe-95ed-5075dc982cc6#media-blob-url=true&id=55c5fc77-c7a0-4a7e-8459-3250226d3af7&collection=contentId-410779681&contextId=410779681&width=1691&height=454&alt=image-20250223-073757.png)

For Step 2 (Webhook): Refer [How to Configure Webhook on KS Pay](https://p2eprojects.atlassian.net/wiki/spaces/PE/pages/410681353/How+to+Configure+Webhook+on+KS+Pay?atl_f=PAGETREE)

Open image-20250223-073809.png

![image-20250223-073809.png](blob:https://p2eprojects.atlassian.net/8bae1248-edbd-4d5d-bd8f-dea2bd92a023#media-blob-url=true&id=a845cd4b-ff2e-4943-a052-cde8f3e8b714&collection=contentId-410779681&contextId=410779681&width=1694&height=474&alt=image-20250223-073809.png)

## **Installation**

Once you have the prerequisites in place, follow these steps to install the KS-PAY package:

Open image-20250223-073835.png

![image-20250223-073835.png](blob:https://p2eprojects.atlassian.net/0874bf6d-1917-4035-89d2-aa38b1104916#media-blob-url=true&id=2812ffaa-c9e0-465f-b585-4acffd6e3156&collection=contentId-410779681&contextId=410779681&width=1694&height=474&alt=image-20250223-073835.png)

Open image-20250223-073901.png

![image-20250223-073901.png](blob:https://p2eprojects.atlassian.net/76d2666e-1d9b-4f94-be0f-712c7b18fc4b#media-blob-url=true&id=ce3c60ac-db2f-406d-bab1-019a3f0c12b8&collection=contentId-410779681&contextId=410779681&width=1132&height=729&alt=image-20250223-073901.png)

Open image-20250223-074019.png

![image-20250223-074019.png](blob:https://p2eprojects.atlassian.net/20931d0d-1426-4856-b86f-7c180338a43a#media-blob-url=true&id=ae2892b7-d231-43ae-a6b8-0e46f15cad44&collection=contentId-410779681&contextId=410779681&width=1156&height=756&alt=image-20250223-074019.png)

1.  Open your terminal and navigate to your React project directory.
    

Open image-20250223-081208.png

![image-20250223-081208.png](blob:https://p2eprojects.atlassian.net/78afad35-ef4a-4eed-ba3c-79d016077d85#media-blob-url=true&id=9320a7e0-3ee0-43de-9053-7d90d605e201&collection=contentId-410779681&contextId=410779681&width=1688&height=817&alt=image-20250223-081208.png)

2.  Run the following command to install the KS-PAY package:
    
    `npm i ks-pay-package-pvt`
    
3.  This command will download and install the KS-PAY package and its dependencies into your project.
    

## **Usage**

To implement the KS-PAY payment gateway in your React application:

1.  Import the `Gateways` component in your React component file:
    

`javascript import Gateways from "ks-pay-package-pvt";`

2.  Set up the necessary state and configuration:
    

Open image-20250227-131550.png

![image-20250227-131550.png](blob:https://p2eprojects.atlassian.net/fa365cb3-ac55-4832-9586-1bf5fba56c09#media-blob-url=true&id=a83acf56-bcc6-49e5-a5ec-0914e387c439&collection=contentId-410779681&contextId=410779681&width=835&height=663&alt=image-20250227-131550.png)

Open image-20250227-131642.png

![image-20250227-131642.png](blob:https://p2eprojects.atlassian.net/05167e98-d060-4c03-a1b6-e6dc9d528d18#media-blob-url=true&id=7ee146c4-a99c-4ce3-95b7-bcb82a2225d3&collection=contentId-410779681&contextId=410779681&width=1092&height=565&alt=image-20250227-131642.png)

-   **Example Configuration:** Adapt the configuration based on the package documentation and your specific payment requirements. You'll need to provide your API keys, callback URLs, and any other required parameters.
    

## **Complete Integration**

1.  Mark as done after installing the package.
    

If the NPM integration is unsuccessful, reattempt the integration process.

Open image-20250223-085338.png

![image-20250223-085338.png](blob:https://p2eprojects.atlassian.net/22d5e8d7-f334-433b-9629-6f067f645ef6#media-blob-url=true&id=1f4e326f-a424-40ce-8c16-c39554175712&collection=contentId-410779681&contextId=410779681&width=1671&height=506&alt=image-20250223-085338.png)

2.  Move to the next Security section.
    

## Testing

1.  **Sandbox Environment:** KS-PAY should provide a sandbox/testing environment. Configure your integration to use the sandbox environment for testing purposes. This environment simulates real transactions without actually charging any accounts.
    
2.  **Testing Scenarios:** Test various payment scenarios, including successful payments, failed payments, and edge cases.
    

Integrating NPM on KS Pay allows you to connect your application to KS Pay’s payment platform, providing secure, reliable, and real-time transaction processing. By following these steps, you can complete the NPM setup, test the connection, and generate API keys to enable seamless payment capabilities for your customers. This integration is essential for automating payment workflows and keeping track of payment statuses directly within your application.