<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>

<link  href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap"  rel="stylesheet">  <link  rel="stylesheet"  href="https://fonts.googleapis.com/icon?family=Material+Icons">


# KS Storage FAQ

### 1. **What is KS Storage?**

Kalp Studio's KS Storage offers a decentralized, secure, and scalable solution for file and folder management. Built on IPFS (InterPlanetary File System), KS Storage allows users to create and organize buckets (top-level containers) and folders (sub-directories) and efficiently upload or manage files, ensuring data resilience and ownership. With decentralized storage, files are stored across a distributed network, reducing dependency on centralized servers and enhancing data security.

Key features include easy file sharing, tagging, and efficient handling, empowering users to store and access data securely without requiring programming skills.

### 2.  What is IPFS?
    

IPFS, or the **InterPlanetary File System**, is a decentralized file storage and sharing protocol. Unlike traditional servers that store files in one location, IPFS distributes data across a peer-to-peer network, making files more accessible, resilient, and censorship-resistant. It provides an efficient way to store and share files by allowing users to retrieve data from the nearest node on the network.

### 3. What kind of documents can be uploaded on IPFS?

IPFS supports a wide range of document types, including but not limited to:

-   **Documents** (e.g., PDFs, Word documents)
    
-   **Images** (e.g., JPEG, PNG, SVG)
    
-   **Audio and Video files** (e.g., MP3, MP4, WAV)
    

### 4. What is the Content ID (CID) generated after uploading a file to IPFS?

A **Content ID (CID)** is a unique identifier generated for each file or piece of content uploaded to IPFS. This CID is derived from the file's content using cryptographic hashing, ensuring that the CID is unique to the file's exact data. When a file is modified, even slightly, a new CID is generated to reflect the change. This mechanism ensures data integrity and enables users to retrieve the exact version of a file using its CID.

### 5. **How do I start using KS Storage?**

-   After logging into **Kalp Studio**, navigate to **KS Storage** from the **Dashboard** under the **Our Products** section.
    
-   Click on **Get Started** to begin.
    

### 6. **What are the available KS Storage subscription plans?**

-   **Developer Plan**: 100 MB free storage.
    
-   **Business Plan**: 3 GB storage for $5.00.
    
-   **Enterprises Plan**: 10 GB storage for $10.00.
    

### 7. **How do I subscribe to a plan?**

-   Go to the **Billing** section.
    
-   Choose your desired plan and click on **Subscribe**.
    
-   Confirm your selection in the pop-up window.
    

### 8. **How can I upgrade my subscription plan?**

-   In the **Billing** section, under **Your Subscription**, click on **Upgrade**.
    
-   Choose a higher-tier plan and confirm the change.
    

### 9. **Can I downgrade my plan?**

-   Downgrading to a lower plan is not available through the dashboard. For changes, contact Kalp Studio support.
    

### 10. **What is the Developer Plan?**

The **Developer Plan** offers 100 MB of free storage, ideal for users who want to test or develop on the KS Storage platform.

### 11. **How do I create a bucket in KS Storage?**

-   Navigate to the **Storage Dashboard**.
    
-   Click on **Create a Bucket** to begin upload files.
    
-   Name your bucket and click **Create**.
    

### 12. **What is a bucket in KS Storage?**

A **bucket** is a container used to store and upload your files within KS Storage. You can create multiple buckets to manage different types of data.

### 13. **How do I upload files to a bucket?**

-   After creating a bucket, click on **Upload Files** from the **Storage Dashboard**.
    
-   Select the files you want to upload, and they will be stored in your chosen bucket.
    

### 14. **How can I view my current storage usage?**

-   Your current storage usage can be viewed from the **Storage Dashboard**.
    
-   The dashboard displays the storage limit and the amount of storage you have used.
    

### 15. **What happens when I reach my storage limit?**

-   You will not be able to upload new files once your storage limit is reached.
    
-   To continue uploading, either delete existing data or upgrade to a plan with a higher storage capacity.
    

### 16. **What are the available payment options for KS Storage plans?**

Payments are processed in credits, which you can manage through the **Wallet** in Kalp Studio. Ensure you have enough credits for your selected plan.

### 17. **Can I cancel my subscription?**

-   Yes, you can cancel your subscription through the **Billing** section or by contacting support.
    
-   Upon cancellation, access to storage and files may be restricted after your current billing period ends.
    

### 18. **What is the purpose of API Key Generation?**

API Key Generation allows developers to interact with KS Storage programmatically, enabling integration with external applications for file management, uploads, and downloads.

### 19. **How do I generate an API key?**

-   Go to **API Key Generation** from the left-hand navigation menu.
    
-   Click **Create API Auth Key**, give it a name and description, and the system will generate the API key.
    

### 20. **What permissions does an API key provide?**

API keys allow programmatic access to KS Storage, including actions like creating buckets, uploading files, downloading files, and managing storage.

### 21. **Can I revoke an API key?**

-   Yes, API keys can be revoked by going to the **API Key Generation** section, finding the key you want to disable, and toggling off its status.
    

### 22. **How do I share files in KS Storage?**

-   After uploading files to a bucket, you can share them using the **Share file** API or by generating shareable links within the storage system.
    

### 23. **Can I set tags for my stored files?**

-   Yes, you can add tags to files to help organize and categorize them for easier search and retrieval using the **Add tags**.
    

### **24. How do I delete a bucket or files in KS Storage?**

To delete a bucket or specific files in KS Storage, navigate to the _Storage Buckets_ section. You can delete individual files by selecting the _Delete_ option next to each file.

However, to delete an entire bucket, you must ensure there are at least two buckets in your storage. Files from the bucket you wish to delete need to be moved to another bucket first. Once all files have been transferred and the bucket is empty, you can delete it by selecting the _Delete_ option next to the bucket.

### 25. **Is there a way to monitor storage activity?**

-   Storage activity logs can be monitored through the API. Each action, such as file upload or download, can be logged using the provided API endpoints.
    

### 26. **Can I share my storage buckets with other users?**

-   Yes, you can share your storage buckets with others through the **Share file** API.
    
-   You can specify permissions for other users when sharing.
    

### 27. **How secure is the data stored in KS Storage?**

-   Data security is a priority for KS Storage. Files are securely stored, and access can be controlled through API keys, with encryption options available for secure data transfer.
    

### 28. **What should I do if I need more storage than available in the current plans?**

-   If the available plans don’t meet your needs, contact **Kalp Studio** support to discuss custom storage solutions or higher-tier plans that may be available beyond the standard offers.
    

### 29. What are tags used for in Kalp Storage?

**Tags** in Kalp Storage are used to help users organize, categorize, and quickly locate files. When a user adds tags to a file, it enables more efficient searching and filtering within the storage system. Tags can be descriptive keywords or phrases relevant to the content, making it easier for users to identify and access files without needing to search through multiple folders or rely solely on file names.

### 30. How can a user access a file uploaded on IPFS?

Once a file is uploaded to IPFS, it can be accessed through its **Content ID (CID)**. This CID is a unique hash generated during upload, allowing users to retrieve the file directly from the IPFS network.

Alternatively, users can access the file using any IPFS desktop or browser-based application by entering the CID, which fetches the content directly from the decentralized network.