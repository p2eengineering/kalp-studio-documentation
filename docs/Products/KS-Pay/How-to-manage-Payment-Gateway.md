<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

# How to manage Payment Gateway on KS Pay

KS Pay, a powerful payment orchestration platform, simplifies the process of integrating and managing multiple payment gateways for merchants. By leveraging KS Pay, businesses can save time and money while efficiently handling payment gateway integrations, downtime management, and smart routing. This allows merchants to focus on their core business operations while KS Pay takes care of their payment gateway needs.

### **Step 1: Log In to your Kalp Studio Account**

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/managepg/mpg1.png)

1.  **Open your web browser:** Launch your preferred web browser.
    
2.  **Navigate to the Kalp Studio sign-in page:** Enter the [URL](https://accounts.kalp.studio/login "https://accounts.kalp.studio/login") for the Kalp Studio login page
    
3.  **Enter your email address:** Locate the "Enter Your Email" field on the sign-in form and enter your registered email address.
    
4.  **Enter your password:** Find the "Enter Password" field and type in your Kalp Studio account password.
    
5.  **Click "Sign In":** Once you have entered your credentials, click the "Sign In" button to access your Kalp Studio account.
    

### **Step 2: Navigating to the Applications Section**

1.  **Locate the Sidebar Menu:** Once logged in, you will see a navigation menu on the left side of the screen.
    
2.  **Click "Applications":** Find the "Applications" icon in the sidebar menu and click on it. This will take you to the Applications section.
    
3.  **View Your Services:** In the Applications section, you can see a list of services, products and apps you subscribed to.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/managepg/mpg2.png)

### **Step 3: Access KS Pay**

1.  Click on “**Explore KS Pay**”
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/managepg/mpg3.png)

If you have not added company and registered your application on KS Pay, refer the following articles.

[How to add a company on KS Pay](Products/KS-Pay/How-to-add-a-company-on-KS-Pay.md)

[How to register your app on KS Pay](Products/KS-Pay/How-to-register-your-app-on-KS-Pay.md)

The KS Pay Dashboard will appear.  
  

### **Step 4: Add Payment Gateways**

1.  On the Payment Gateway Settings page, you'll see a list of existing payment gateways associated with supported currencies.
    
2.  Click on "+ Add Gateway" to include a new gateway.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/managepg/mpg4.png)

3.  Choose the desired gateway (e.g., Razorpay or Cashfree) and select the supported currency (e.g., INR for Indian Rupees).
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/managepg/mpg5.png)

4.  The newly added gateway will appear under the relevant currency section
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/managepg/mpg6.png)

### **Step 5: Verify Payment Gateways**

1.  Verified gateways are marked with a green checkmark. To verify a gateway, select the **Edit** (pencil) icon next to the gateway name.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/managepg/mpg7.png)

2.  Complete any required verification steps provided by the gateway provider.
    
3.  Once verified, the status should update automatically.
    

### **Step 6: Enable or Disable Payment Gateways**

1.  Use the toggle switch next to each gateway to **enable** or **disable** it. Enabled gateways will be active for transactions.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/managepg/mpg8.png)

2.  For a gateway to be fully operational, it needs to be both enabled and verified.
    

### **Step 7: Set Payment Gateway Priority**

1.  Click on "Set Priority" at the bottom of the Payment Gateway section.
    
2.  In the panel that appears, drag and drop gateways to set their priority.
    

![](https://docs-images-kalp-studio.s3.ap-south-1.amazonaws.com/Audit+2/managepg/mpg9.png)

3.  Place your preferred gateway (e.g., Razorpay or Cashfree) at the top of the list.
    
4.  Arrange other gateways below as fallback options.
    
5.  Save your priority settings.
    

### **Step 7: Manage Currency and Payment Modes**

1.  Under the Set Priority section, select the specific currency (e.g., INR).
    
2.  Specify the payment modes available for the selected gateway, such as UPI, Net Banking, or Credit/Debit Cards.
    
3.  Rearrange payment modes if needed to prioritize certain options.
    

## **Specific Configuration for Razorpay**

When configuring Razorpay on KS Pay:

1.  Obtain your Razorpay API Key ID and Secret Key from the Razorpay dashboard.
    
2.  Enter these credentials in the designated fields on KS Pay.
    
3.  Set up webhooks to ensure real-time communication between Razorpay and KS Pay for payment status updates.
    

## **Specific Configuration for Cashfree**

For Cashfree integration on KS Pay:

1.  Retrieve your Cashfree App ID and Secret Key from the Cashfree dashboard.
    
2.  Input these details into the appropriate fields on KS Pay.
    
3.  Configure the API base URL according to your Cashfree account type (Test or Production).
    
4.  Enable Cashfree-related events for comprehensive payment status tracking.
    

By following these steps, merchants can efficiently configure and manage payment gateways like Razorpay or Cashfree on KS Pay. This streamlined process allows businesses to offer multiple payment options to their customers while benefiting from KS Pay's smart routing and downtime management features. With KS Pay handling the complexities of payment gateway integration, merchants can focus on growing their business.