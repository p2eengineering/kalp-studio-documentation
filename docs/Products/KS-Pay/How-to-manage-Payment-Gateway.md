<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# How to manage Payment Gateway on KS Pay

KS Pay, a powerful payment orchestration platform, simplifies the process of integrating and managing multiple payment gateways for merchants. By leveraging KS Pay, businesses can save time and money while efficiently handling payment gateway integrations, downtime management, and smart routing. This allows merchants to focus on their core business operations while KS Pay takes care of their payment gateway needs.

### **Step 1: Log In to your Kalp Studio Account**

Open image-20250303-122607.png

![image-20250303-122607.png](blob:https://p2eprojects.atlassian.net/5d00e5f0-6a82-4120-948e-0e8af2d1689b#media-blob-url=true&id=2e33bf6d-a01d-458f-af44-9500f51d2f36&collection=contentId-407175270&contextId=407175270&mimeType=image%2Fpng&name=image-20250303-122607.png&size=33601&width=825&height=665&alt=image-20250303-122607.png)

1.  **Open your web browser:** Launch your preferred web browser.
    
2.  **Navigate to the Kalp Studio sign-in page:** Enter the [URL](https://accounts.kalp.studio/login "https://accounts.kalp.studio/login") for the Kalp Studio login page
    
3.  **Enter your email address:** Locate the "Enter Your Email" field on the sign-in form and enter your registered email address.
    
4.  **Enter your password:** Find the "Enter Password" field and type in your Kalp Studio account password.
    
5.  **Click "Sign In":** Once you have entered your credentials, click the "Sign In" button to access your Kalp Studio account.
    

### **Step 2: Navigating to the Applications Section**

1.  **Locate the Sidebar Menu:** Once logged in, you will see a navigation menu on the left side of the screen.
    
2.  **Click "Applications":** Find the "Applications" icon in the sidebar menu and click on it. This will take you to the Applications section.
    
3.  **View Your Services:** In the Applications section, you can see a list of services, products and apps you subscribed to.
    

Open image-20250402-054911.png

![image-20250402-054911.png](blob:https://p2eprojects.atlassian.net/1e013405-fc4b-4ed5-af9b-398128f9a52a#media-blob-url=true&id=d92761ed-13e0-4ea7-8a78-02df653d242f&collection=contentId-407175270&contextId=407175270&mimeType=image%2Fpng&name=image-20250402-054911.png&size=115475&width=1679&height=716&alt=image-20250402-054911.png)

### **Step 3: Access KS Pay**

1.  Click on “**Explore KS Pay**”
    

Open image-20250402-055048.png

![image-20250402-055048.png](blob:https://p2eprojects.atlassian.net/13fd9f3d-d0c1-4357-beec-1cc7aca3d91c#media-blob-url=true&id=e9465ef4-2302-4db2-9ed4-b9195a0f21eb&collection=contentId-407175270&contextId=407175270&mimeType=image%2Fpng&name=image-20250402-055048.png&size=139156&width=1679&height=716&alt=image-20250402-055048.png)

If you have not added company and registered your application on KS Pay, refer the following articles.

[How to add a company on KS Pay](Products/KS-Pay/How-to-add-a-company-on-KS-Pay.md)

[How to register your app on KS Pay](Products/KS-Pay/How-to-register-your-app-on-KS-Pay.md)

The KS Pay Dashboard will appear.  
  

### **Step 4: Add Payment Gateways**

1.  On the Payment Gateway Settings page, you'll see a list of existing payment gateways associated with supported currencies.
    
2.  Click on "+ Add Gateway" to include a new gateway.
    

Open image-20250402-060420.png

![image-20250402-060420.png](blob:https://p2eprojects.atlassian.net/e2d36175-6cb8-4cc5-a5c6-b812d8423a31#media-blob-url=true&id=0c368986-d70d-4bc2-936a-f205663ccf1a&collection=contentId-407175270&contextId=407175270&mimeType=image%2Fpng&name=image-20250402-060420.png&size=49278&width=1700&height=442&alt=image-20250402-060420.png)

3.  Choose the desired gateway (e.g., Razorpay or Cashfree) and select the supported currency (e.g., INR for Indian Rupees).
    

Open image-20250402-060452.png

![image-20250402-060452.png](blob:https://p2eprojects.atlassian.net/285f808e-4a06-4055-a94b-fa80c5780f48#media-blob-url=true&id=40a6f380-a08d-4240-9c5f-08c9197f3a1c&collection=contentId-407175270&contextId=407175270&mimeType=image%2Fpng&name=image-20250402-060452.png&size=49622&width=1700&height=442&alt=image-20250402-060452.png)

4.  The newly added gateway will appear under the relevant currency section
    

Open image-20241008-090220.png

![image-20241008-090220.png](blob:https://p2eprojects.atlassian.net/3520481d-b06a-42ec-9c19-ab4dfc115a0d#media-blob-url=true&id=0f70a458-7cfc-4d85-84cb-17f84fc4020a&collection=contentId-407175270&contextId=407175270&mimeType=image%2Fpng&name=image-20241008-090220.png&size=44024&width=1912&height=497&alt=image-20241008-090220.png)

### **Step 5: Verify Payment Gateways**

1.  Verified gateways are marked with a green checkmark. To verify a gateway, select the **Edit** (pencil) icon next to the gateway name.
    

Open image-20250402-060311.png

![image-20250402-060311.png](blob:https://p2eprojects.atlassian.net/11ed7cb8-00a7-4aba-b1aa-7569b86f6547#media-blob-url=true&id=41bf7060-9131-4fc5-a3c8-7f824f7081ab&collection=contentId-407175270&contextId=407175270&mimeType=image%2Fpng&name=image-20250402-060311.png&size=49001&width=1700&height=442&alt=image-20250402-060311.png)

2.  Complete any required verification steps provided by the gateway provider.
    
3.  Once verified, the status should update automatically.
    

### **Step 6: Enable or Disable Payment Gateways**

1.  Use the toggle switch next to each gateway to **enable** or **disable** it. Enabled gateways will be active for transactions.
    

Open image-20250402-060539.png

![image-20250402-060539.png](blob:https://p2eprojects.atlassian.net/6acc20fc-1bc5-444f-a6ef-bba8ba9f3f50#media-blob-url=true&id=a1fc5364-f71d-47e1-b763-241928d29665&collection=contentId-407175270&contextId=407175270&mimeType=image%2Fpng&name=image-20250402-060539.png&size=51318&width=1700&height=442&alt=image-20250402-060539.png)

2.  For a gateway to be fully operational, it needs to be both enabled and verified.
    

### **Step 7: Set Payment Gateway Priority**

1.  Click on "Set Priority" at the bottom of the Payment Gateway section.
    
2.  In the panel that appears, drag and drop gateways to set their priority.
    

Open image-20250402-060630.png

![image-20250402-060630.png](blob:https://p2eprojects.atlassian.net/3f2ddf30-27f1-4c86-ab46-8db364721f77#media-blob-url=true&id=99bd700e-fd02-42f6-9d0a-604546697db5&collection=contentId-407175270&contextId=407175270&mimeType=image%2Fpng&name=image-20250402-060630.png&size=63334&width=1701&height=578&alt=image-20250402-060630.png)

3.  Place your preferred gateway (e.g., Razorpay or Cashfree) at the top of the list.
    
4.  Arrange other gateways below as fallback options.
    
5.  Save your priority settings.
    

### **Step 7: Manage Currency and Payment Modes**

1.  Under the Set Priority section, select the specific currency (e.g., INR).
    
2.  Specify the payment modes available for the selected gateway, such as UPI, Net Banking, or Credit/Debit Cards.
    
3.  Rearrange payment modes if needed to prioritize certain options.
    

## Specific Configuration for Razorpay

When configuring Razorpay on KS Pay:

1.  Obtain your Razorpay API Key ID and Secret Key from the Razorpay dashboard.
    
2.  Enter these credentials in the designated fields on KS Pay.
    
3.  Set up webhooks to ensure real-time communication between Razorpay and KS Pay for payment status updates.
    

## Specific Configuration for Cashfree

For Cashfree integration on KS Pay:

1.  Retrieve your Cashfree App ID and Secret Key from the Cashfree dashboard.
    
2.  Input these details into the appropriate fields on KS Pay.
    
3.  Configure the API base URL according to your Cashfree account type (Test or Production).
    
4.  Enable Cashfree-related events for comprehensive payment status tracking.
    

By following these steps, merchants can efficiently configure and manage payment gateways like Razorpay or Cashfree on KS Pay. This streamlined process allows businesses to offer multiple payment options to their customers while benefiting from KS Pay's smart routing and downtime management features. With KS Pay handling the complexities of payment gateway integration, merchants can focus on growing their business.