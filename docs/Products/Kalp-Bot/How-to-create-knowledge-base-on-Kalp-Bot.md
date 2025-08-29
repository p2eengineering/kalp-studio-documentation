<style>  body { font-family: "Source Sans 3", sans-serif!important; }</style>

<link  href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap"  rel="stylesheet">  <link  rel="stylesheet"  href="https://fonts.googleapis.com/icon?family=Material+Icons">

# How to create knowledge base Kalp Bot?

A knowledge base is the brain of your chatbot. It's where you feed it the information specific to your business, products, services, or any domain you want it to be an expert in. Without a well-structured and comprehensive knowledge base, your bot will be limited in its ability to assist users effectively. Kalp Studio simplifies the creation process, allowing you to use various data sources like files, audio, and website content.

### Step 1: Entering Knowledge Base Details


![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Kalpbot/createknowledgebase/ckb1.png)

Once you initiate the creation process, you'll be guided through a multi-step.

1.  **Step 1: Enter Details**
    
    -   _Knowledge Base Name :_ Provide a clear and descriptive name for your knowledge base. This is a mandatory field. For example, "Product FAQs," "Company Policies," or "Technical Support Guide."  
          
    
        
        ![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Kalpbot/createknowledgebase/ckb2.png)
        
    -   **Upload Thumbnail:** You can upload an image (JPG, PNG; Max size: 2MB) to serve as a thumbnail for your knowledge base. This is optional but can help in visually organizing multiple knowledge bases.
        


![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Kalpbot/createknowledgebase/ckb3.png)

1.  **Description:** Add a brief description of what this knowledge base contains.
    
2.  After filling in the necessary details, click the **"Next"** button to proceed.
    
    Upon successful creation of the basic knowledge base entry, you see a success notification like "Knowledge Base created successfully.
    

![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Kalpbot/createknowledgebase/ckb4.png)

### Step 2: Adding Data Sources

This is where you populate your knowledge base with actual information. KALP STUDIO provides multiple ways to add data:

1.  **Step 2: Add Data Source**  
    You'll see tabs for different types of data sources: **Files, Audio, and Website.**
    
    -   **A. Adding Files:**  
          
                
        ![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Kalpbot/createknowledgebase/ckb5.png)
        
        -   The **"Files"** tab is usually selected by default.
            
        -   You can **Drag & Drop** your files into the designated area or click **"Browse File"** to select them from your computer.
            
        -   Supported File Types for this section include: **.pdf, .docx, and .txt**.
            
        -   As you upload files, the "Total detected characters" count will update, giving you an idea of the volume of information being processed.
            
        -   Uploaded files will appear under "Attached Files," where you can also remove them if needed.
            
    -   **B. Adding Audio:**  
          
        
        
        ![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Kalpbot/createknowledgebase/ckb6.png)
        
        -   Click on the **"Audio"** tab.
            
        -   Similar to files, you can **Drag & Drop** audio files or use the **"Browse File"** option.
            
        -   The supported file type for audio is **.mp3**.
            
    -   **C. Adding Website Content:**  
          
                
        ![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Kalpbot/createknowledgebase/ckb7.png)
        
        -   Click on the **"Website"** tab.
            
        -   In the "Enter your website URL" field, paste the URL of the website or specific web pages you want Kalp Bot to learn from. The system will then crawl and extract information from this source.
            
    
    You can use one or a combination of these data sources to build a comprehensive knowledge base.
    

### Step 3: Initiating Training

Once you have added all your desired data sources:

1.  The **"Start Training"** button, initially greyed out, will become active (typically black) once at least one data source is added.
    
2.  Click the **"Start Training"** button.  
      
        
    ![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Kalpbot/createknowledgebase/ckb8.png)
    
3.  You should see a notification indicating that the training process has begun, for example, "Training initiated successfully."  
      
        
    ![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Kalpbot/createknowledgebase/ckb9.png)
    

The system will now process all the information you've provided, indexing it and preparing it for use by your chatbot. The time taken for training can vary depending on the volume and complexity of the data.

### Step 4: Monitoring Your Knowledge Base

After initiating training:

1.  You will be redirected to the main **"Knowledge Base"** listing page.
    
2.  Here, you'll see your newly created knowledge base (e.g., "test") listed along with details like:
    
    -   **Knowledge Base Name**
        
    -   **Created At** (Timestamp)
        
    -   **Updated At** (Timestamp, will update after training or modifications)
        
    -   **Status**
        
3.  Initially, the status shows as **"UnTrained"** or "Training in Progress." Once the process is complete, the status will update accordingly (e.g., "Trained" or "Active").
    

![](https://doc-images-kalp-studio.s3.ap-south-1.amazonaws.com/Kalpbot/createknowledgebase/ckb10.png)

You can typically click on the knowledge base name to view its details, add more data, or re-train it later if needed.

### Conclusion:

Creating a knowledge base in Kalp Studio is a straightforward process designed to be user-friendly. By carefully curating and uploading relevant information through files, audio, or website links, you empower your Kalp Bot to understand user queries better and deliver more accurate and helpful responses.