<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# **How to use Embedded wallet configuration?**

Kalp Studio’s Embedded Wallet module lets you add a customizable, user-friendly MPC wallet directly to your dApp. This eliminates the hassle of managing seed phrases or installing browser extensions, making Web3 onboarding faster and simpler for users. In this guide, you’ll learn how to configure and use the Embedded Wallet to enhance your dApp’s wallet integration.

### **Step 1: Sign in to Kalp Studio**

The journey begins at the Kalp Studio sign-in page. This is your gateway to all the platform's features, including the Wallet Dashboard.

1.  **Open your Web Browser:** Launch your preferred web browser.
    
2.  **Navigate to the Kalp Studio Login Page:** Go to the Kalp Studio login page.
    
3.  **Enter Your Credentials:** You'll be presented with a form requesting your login information.
    

-   **Email:** In the "Enter Your Email" field, type in the email address you used when registering for your Kalp Studio account.
    
-   **Password:** In the "Enter Password" field, carefully enter your account password. Pay attention to capitalization and any special characters.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew1.png)

4.  **Click the "Sign In" Button:** Once you've entered your email and password, click the "Sign In" button. This will initiate the login process.
    

### **Step 2: After Successfully Sign in**

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew2.png)

1.  **Product Page:** After Successfully Sign-In you will find a product page. In this page you will see different applications like SMS, Kalp Instant Deployer, Email, KS Storage, KS Wallet, KS Query, NFT Creator, Token Studio, API Gateway.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew3.png)

2.  **Select KS Wallet:** You have to Select the KS Wallet for the next steps.
    
3.  **Select Get Started:** After selecting the KS wallet now, you have to select "Get Started".
    

### **Step 3: Navigate to Embedded Wallet Configuration**

1.  Log in to your [Kalp Studio](https://accounts.kalp.studio/login "https://accounts.kalp.studio/login") dashboard.
    
2.  In the left-hand navigation menu, locate and click on **"Embedded Wallet"**.
    
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew4.png)

### **Step 4: Understand the Configuration Interface**

You will land on the "Embedded Wallet Configuration" page, as shown in the screenshot below.

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew5.png)

-   A brief description of the Embedded Wallet module.
    
-   Configuration options on the left.
    
-   A live preview panel on the right, showing how the wallet widget will appear.
    
-   A "View Docs" button for more technical documentation.
    

### **Step 5: Configure Login Options**

1.  Locate the **Login Option** dropdown menu, as shown in the screenshot below.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew6.png)

2.  Click the dropdown to expand it.
    
3.  Select the social login and authentication methods you want to offer your users. Options typically include **Google, Email, and Phone**. Check the boxes next to your desired methods.
    

### **Step 6: Customize the Theme**

1.  Locate the **Theme Color** dropdown menu below Login Option, as shown in the screenshot below.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew7.png)

2.  Click the dropdown to expand it.
    
3.  You can customize:
    
    -   **Background Color:** Click this tab and use the color picker or enter a HEX code to set the desired background color for the wallet modal and button.
        
    -   **Text Color:** Click this tab and use the color picker or enter a HEX code to set the text color, ensuring good contrast with the background.
        
4.  As you adjust colors, the **Preview Panel** will update instantly, showing you the real-time look and feel.
    

### **Step 7: Preview Different Views**

The preview panel has tabs to show how the widget will look in different states:

-   **Modal:** Shows the main login/wallet interface.
    
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew8.png)

-   **Button:** Shows how the primary action button will look based on your theme.
    
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew9.png)

-   **Code:** Provides the necessary code snippets for integration.
    
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew10.png)

### **Step 8: Apply and Save Changes**

1.  Once you are satisfied with your login options and theme customization, click the **"Apply Changes"** button at the bottom left.
    
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew11.png)

2.  A success notification (e.g., "Successfully Updated") should appear, confirming your configuration has been saved.
    
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew12.png)

### **Step 9: Obtain Your API Key**

The integration code requires an API key to link your application to your KLP Studio configuration.

1.  In the left-hand navigation menu, click on **"Open API"**.
    
![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew13.png)

2.  This page lists your generated API keys. Find the relevant key you wish to use for this integration.
    
3.  Click the **copy icon** next to the "API Auth Key" to copy it to your clipboard.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew14.png)

### **Step 10: Integrate into Your Application**

1.  Access the page in **your application** where you wish to embed the wallet.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew15.png)

2.  You should now see the Embedded Wallet login modal or button, styled according to your configuration.
    
3.  If your application requires the user to input the API key initially, paste the key and submit.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew16.png)

4.  Test the login flow using one of the enabled methods.
    
5.  Upon successful login, the embedded wallet should be active within your application, potentially displaying user information or action buttons like "Claim", "Update Balance", or "Disconnect", confirming successful integration.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/embedwallet/ew17.png)

By following these steps, you can effectively configure the Kalp Studio Embedded Wallet's appearance and login methods, obtain the necessary code and API key, and integrate a seamless, branded wallet experience directly into your application. This significantly enhances user onboarding and interaction within the Web3 ecosystem.