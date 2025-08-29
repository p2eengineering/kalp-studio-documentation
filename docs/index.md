---
hide:
  - navigation
  - toc
---
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title aria-describedby="Kalp Studio's documentation provides developers with essential tools and resources to build, manage, and scale blockchain networks efficiently.">Kalp Studio Landing Page</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+3:ital,wght@0,200..900;1,200..900&display=swap" rel="stylesheet">    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/octicons/8.5.0/build.css">
    <style>
        html{
            font-family: "Source Sans 3", sans-serif!important;
        }
        body {
            font-family: "Source Sans 3", sans-serif;
            margin: 0;
            padding: 0;
            background-color: #F5F5F5;
            color: #333;
        }
         .material-icons, .octicon {
                vertical-align: middle;
                margin-right: 8px;
            }
                    .md-grid {
                max-width: unset;
            }
            .md-content__inner {
                margin: 0;
            }
                    .md-header__inner {
                max-width: 61rem!important;
                 font-family: "Source Sans 3", sans-serif;
            }
            .md-tabs {
                max-width: 61rem!important;
                margin: 0 auto;
            }
        .header {
            color: #000000;
            padding: 40px 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            align-items: flex-start;
            gap: 10px;
        }
        .heading-wrapper{
            display: flex;
            align-items: center;
            flex-direction: column;
             margin: 0;
            font-size: 36px!important;
            font-style: normal;
            font-weight: 700!important;
            color: black;
        }
        .header h1 {
            margin: 0;
            font-weight: 700;
            font-size: 2.5em;
            color: #000000;
            text-align: left;
        }
        .note {
            text-align: left;
        }
        .card h2 {
            margin-top: 0;
            font-size: 1.5em;
        }
        .card a {
            color: #1e88e5;
            text-decoration: none;
        }
        .card a:hover {
            text-decoration: underline;
        }
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            margin-top: 20px;
        }
        .quick-start-wrapper-main-wrapper {
            justify-content: center!important;
             a {
             color: black;
            }
            a:hover {
            color: black;
            }
         }
        .header-main-text {
            color: #685FD3;
        }
        .header-main-wrapper {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin: 0 auto;
            max-width: 61rem;
            width: 100%;
        }
        @media only screen and (max-width: 1024px) {
          .header-main-wrapper {
             display: flex;
             flex-direction: column;
             align-items: center;
             justify-content: center;
             padding: 0 10px;
         }
         .quick-start-wrapper-main-wrapper {
         .quick-link{
          display: flex !important;
          justify-content: center;
          align-items: center;
         }
            justify-content: center!important;
             a {
                width: 100%
                }
         }
         .developer-resource-card-wrapper{
          padding: 0 10px;
          }
        }
        @media only screen and (max-width: 600px) {
        .quick-start-wrapper{
          .quick-start-wrapper-main-wrapper{
             .quick-start-wrapper-card {
                max-width: unset;
                min-width: unset;
                margin: 0 15px;
             }
          }
        }
          .second-section, .developer-resource-card-wrapper{
             display: flex;
             flex-direction: column;
             align-items: center;
             justify-content: center;
         }
          .dev-res {
             display: grid;
             grid-template-columns: none !important;
          }
         .developer-resource-card-wrapper {
          margin: 0 20px;
        }
        }
        .build-wrapper-header {
            display: flex;
            gap: 20px;
        }
        .md-typeset .md-content__button {
            display: none;
            }
        .build-wrapper {
             padding: 18px;
             border-radius: 20px;
             border: 2px solid #FFF;
             background: rgba(250, 250, 250, 0.95);
             box-shadow: 0px 4px 20px 0px rgba(0, 0, 0, 0.05);
             backdrop-filter: blur(20px);
             width: 100%;
        }
        .build-title-sub-wrapper {
            display: flex;
            flex-direction: column;
            gap: 0;
        }
        .build-title-sub-wrapper h2 {
            font-weight: 700;
            font-size: 24px;
            line-height: 120%;
            margin: 0;
        }
        .build-title-sub-wrapper span {
            margin: 0;
            color: #404040;
            font-size: 14px;
        }
        .second-section {
           display: flex;
           gap: 40px;
           max-width: 61rem;
           margin: 0 auto;
        }
        .build-description-card {
            border-radius: 10px;
            background: rgba(0, 0, 0, 0.05); 
            display: flex;
            flex-direction: column;
            padding: 15px 24px;   
        }
        .build-description-card-title {
            font-size: 18px;
            font-weight: 600;
            display: flex;
            gap: 10px;
            align-items: center;
        }
        .build-description-card-title svg {
            margin-bottom: 5px;
        }
        .build-description-card-description {
            font-size: 16px;
            font-style: normal;
            font-weight: 400;
            line-height: 120%;
        }
        .build-description-card-main {
            display: flex;
            gap: 10px;
            flex-direction: column;
            margin-top: 10px;
            a {
            color: black;
            }
            a:hover {
            color: black;
            }
        }
        .developer-resource {
            background: #FFFFFF;
            margin-top: 30px;
            padding: 30px 0;
            display: flex;
            position: relative;
            gap: 24px;
            flex-direction: column;
            align-items: center;
            overflow: hidden;
        }
        .developer-resource-sub-wrapper {
            display: flex;
            align-items: center;
            flex-direction: column;
        }
        .developer-resource-sub-wrapper h3 {
            margin: 0;
            font-size: 36px;
            font-style: normal;
            font-weight: 700;
            color: black;
        }
        .developer-resource-sub-wrapper span {
            color: #404040;
            font-size: 14px;
            font-style: normal;
            font-weight: 400;
        }
        .build-description-card:hover {
            background: white;
            border: 1px solid #685FD3;
            cursor: pointer;
            .build-description-card-title {
             color: #685FD3            
            }
            .build-description-card-title svg {
                rotate: 30deg!important;
                margin-bottom: 0;
                path {
                fill: #685FD3;
                }
            }
        }
        .card-wrapper {
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            padding: 18px 30px 30px 30px;
            border-radius: 20px;
            border: 2px solid #EFEFEF;
            background: #FFF;
            z-index: 1;
            box-shadow: 0px 4px 20px 0px rgba(0, 0, 0, 0.02);
            img {
                height: 48px;
                width: 48px;
            }
            h4 {
                color: black;
                margin: 0;
            }
            span {
             font-size: 14px;
            }
        }
        .developer-resource-card-wrapper {
            display: grid;
            grid-template-columns: auto auto auto;
            max-width: 61rem;
            width: 100%;
            gap: 22px;
            a {
            color: black;
            }
            a:hover {
            color: black;
            }
        }
        .card-wrapper:hover {
            border: 1px solid #685FD3;
            box-shadow: 0px 4px 20px 0px #685fd336;
        }
        .dote-wrapper {
            height: 80px;
            width: 80px;
            position: absolute;
            background: #685FD3;
            border-radius: 100%;
            bottom: 20%;
            left: 0;
            filter: blur(60px);
        }
        .dote-wrapper-green {
            height: 80px;
            width: 80px;
            position: absolute;
            border-radius: 100%;
            bottom: 10%;
            right: 10px;
            background: rgb(203 253 19);
            filter: blur(85px);
        }
        .quick-start-wrapper {
            margin: 40px auto!important;
            display: flex;
            align-items: center;
            justify-content: center;
            max-width: 61rem;
            flex-direction: column;
            h3 {
                font-weight: 700;
                margin: 0;
                color: black;
            }
        }
        .quick-start-wrapper-card {
            background: white;
            display: flex;
            flex-direction: column;
            gap: 10px;
            max-width: 320px;
            height: 100%;
            min-width: 392px;
            width: 100%;
            padding: 30px;
            box-shadow: 0px 4px 20px 0px rgba(0, 0, 0, 0.02);
            border-radius: 20px;
            border: 2px solid #EFEFEF;
            a {
            width: 100%
            }
          .kalp-icon {
           height: 48px;
           width: 48px;
           display: flex;
           align-items: center;
           justify-content: center;
           background: #EFEFEF;
           border-radius: 50%;
           padding: 10px;
          }
           span {
               font-weight: 600;
               max-width: 250px;
               line-height: 120%;
           }
        }
        .quick-start-wrapper-sub-wrapper {
             display: flex;
             align-items: center;
             justify-content: space-between;
         }
          .quick-start-wrapper-card:hover {
            border: 1px solid #685FD3;
            box-shadow: 0px 4px 10px 0px #685fd336;
            cursor: pointer;
            span {
            color: #685FD3;
            }
            svg {
             path {
                 fill: #685FD3;
            }
            }
            .kalp-icon {
                background: #A0A0A0;
                svg {
                path {
                    fill: white;
                    }
                }
            }
          }
          .quick-start-wrapper-main-wrapper {
            display: flex;
            justify-content: flex-start;
            gap: 20px;
            flex-wrap: wrap;
            margin-top: 50px;
          }
          .arrow-wrapper {
            rotate: 30deg;
          }
    </style>
    <script type="application/ld+json"> 
    { 
      "@context": "https://schema.org/", 
      "@type": "WebSite", 
      "name": "KalpStudio", 
      "url": "https://www.kalp.studio/", 
      "potentialAction": { 
        "@type": "SearchAction", 
        "target": "https://docs.kalp.studio/{search_term_string}", 
        "query-input": "required name=search_term_string" 
      } 
    } 
    </script> 
    <script type="application/ld+json"> 
    { 
      "@context": "https://schema.org/",  
      "@type": "BreadcrumbList",  
      "itemListElement": [{ 
        "@type": "ListItem",  
        "position": 1,  
        "name": "KalpStudio", 
        "item": "https://www.kalp.studio/"   
      },{ 
        "@type": "ListItem",  
        "position": 2,  
        "name": "Kalp Documentation", 
        "item": "https://docs.kalp.studio/"   
      }] 
    }
    </script> 
</head>
<body>
    <header class="header-main-wrapper">
        <div class="header">
         <h1>Welcome to <span class="header-main-text">Kalp Studio!</span></h1>
                <div class="note">
                <br />
Kalp Studio is a decentralized infrastructure platform that empowers developers to build, manage, and scale blockchain applications and networks. It provides a comprehensive suite of tools, including smart contract development, decentralized storage, and network orchestration, streamlining blockchain implementation and improving efficiency.                </div>
        </div>
       <img src="Video/hero-banner.gif" alt="image-banner" />
    </header>
              <h2 class="heading-wrapper">Getting Started with Kalp Studio</h2>
          <div class="second-section">
                <div class="build-wrapper">
                  <div class="build-description-card-main">
                      <a href="/Products/Kalp-Studio-Console/Onboarding/How-to-Sign-Up-to-Kalp-Studio-Platform/">
                          <div class="build-description-card">
                          <div class="build-description-card-title">
                              Onboarding
                                 <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                              </svg>
                          </div>
                          <span class="build-description-card-description">
                            The Kalp Studio onboarding process is seamless, guiding you through the necessary steps to set up your account and use the platform effectively.                          </span>
                          </div>
                     </a>
                     <a href="/Products/Kalp-Studio-Console/Dashboard/How-to-Navigate-Kalp-Studio-Platform-as-an-New-User/">
                      <div class="build-description-card">
                         <div class="build-description-card-title">
                             Dashboard
                             <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                             <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                             </svg>
                         </div>
                         <span class="build-description-card-description">
                         The Kalp studio dashboard provides an all-in-one overview of your smart contract projects, giving you real-time insights and control over your operations.
                         </span>
                     </div>
                     </a>
                     <a  href="/Products/Kalp-Studio-Console/Billing/How-does-a-new-user-access-billing/">
                      <div class="build-description-card">
                         <div class="build-description-card-title">
                             Billing
                             <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                             <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                             </svg>
                         </div>
                         <span class="build-description-card-description">
                         The billing section allows you to manage your payment methods, view invoices, and track your subscription details.
                         </span>
                     </div>
                     </a>
                     <a href="/Products/Kalp-Studio-Console/Credits/How-to-Add-Credit/">
                     <div class="build-description-card">
                         <div class="build-description-card-title">
                             Credits
                             <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                             <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                             </svg>
                         </div>
                         <span class="build-description-card-description">
                            You can use credits in Kalp Studio to access various services and features on the platform.
                         </span>
                     </div>
                     </a>
                      <a  href="/Products/Kalp-Studio-Console/API-Gateway/How-to-generate-API-endpoints/">
                             <div class="build-description-card">
                                  <div class="build-description-card-title">
                                      API Gateway
                                      <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                                      </svg>
                                  </div>
                                  <span class="build-description-card-description">
                                  The API gateway in kalp studio provides a centralized interface for managing and accessing your APIs.
                                  </span>
                              </div>
                          </a>
                          <a  href="/Products/Kalp-Studio-Console/Transaction-monitoring/How-can-I-monitor-all-my-transactions/">
                           <div class="build-description-card">
                                <div class="build-description-card-title">
                                    Transaction Monitoring
                                    <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                                    </svg>
                                </div>
                                <span class="build-description-card-description">
                                Transaction monitoring in kalp studio provides tools to track and analyze blockchain transactions in real time.
                                </span>
                            </div>
                        </a>
                        <a  href="/Products/Kalp-Studio-Console/API-Key-Generation/How-to-generate-API-Key/">
                         <div class="build-description-card">
                              <div class="build-description-card-title">
                                  API Key Generation
                                  <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                                  </svg>
                              </div>
                              <span class="build-description-card-description">
                              API key generation in kalp studio enables you to create and manage keys for authenticating API requests.
                              </span>
                          </div>
                      </a>
              </div>
        </div>
               <div class="build-wrapper">
                 <div class="build-description-card-main">
                 <a  href="/Introduction/Kalp-studio-overview/">
                     <div class="build-description-card">
                        <div class="build-description-card-title">
                            Kalp Studio Overview
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                            </svg>
                        </div>
                        <span class="build-description-card-description">
                        Kalp Studio is a decentralized platform that help developers create, manage, and scale blockchain applications and networks. It provides a suite of powerful tools and services that streamline complex blockchain tasks.                         </span>
                    </div>
                   </a>
                       <a  href="/Introduction/Kalp-studio-ecosystem/">
                       <div class="build-description-card">
                         <div class="build-description-card-title">
                             Kalp Studio Console 
                             <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                             <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                             </svg>
                         </div>
                          <span class="build-description-card-description">
                            Kalp studio console dashboard allows developers, businesses, and enthusiasts to build, manage, and scale blockchain applications with ease.
                        </span>
                     </div>
                     </a>
                       <a  href="/Introduction/Kalp-DLT/">
                        <div class="build-description-card">
                             <div class="build-description-card-title">
                                 Kalp DLT
                                 <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                 <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                                 </svg>
                             </div>
                              <span class="build-description-card-description">
                            Kalp DLT is a fully regulated blockchain platform for Real World Asset (RWA) ecosystems. It lets developers build decentralized applications (DApps), tokenize real-world assets, and deploy legally enforceable smart contracts.                            </span>
                         </div>
                     </a>
                   <a  href="/Introduction/Kalp-instant-deployer/">
                    <div class="build-description-card">
                    <div class="build-description-card-title">
                        Kalp Instant Deployer
                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                        </svg>
                    </div>
                     <span class="build-description-card-description">
                        Kalp Instant Deployer (KID) is a service designed to handle the deployment of smart contracts and track their status post-deployment.
                   </span>
                    </div>
                    </a>
                     <a  href="/Introduction/Kalp-wallet/">
                        <div class="build-description-card">
                        <div class="build-description-card-title">
                            What is Kalp Wallet
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                            </svg>
                        </div>
                         <span class="build-description-card-description">
                            Kalp wallet is a versatile cryptocurrency wallet that supports kalp blockchain and offers various wallet types to cater to different user needs and security preferences.
                       </span>
                        </div>
                    </a>
                   </div>
                </div>
             </div>
             <div class="developer-resource">
                    <div class="developer-resource-sub-wrapper">
                        <h3>
                        Developer Resources
                        </h3>
                        <span>
                        For developers who know what they want to build and are ready to go with KALP Blockchain.
                        </span>
                    </div>
                    <div class="developer-resource-card-wrapper dev-res">
                        <div class="dote-wrapper"></div>
                        <div class="dote-wrapper-green"></div>
                        <a href="/Dev-documentation/Kalp-DLT/Use-the-kalp-sdk/Kalp-golang-sdk/">
                        <div class="card-wrapper">
                             <img src="images/kalpSdk.svg" alt="sdk" />
                             <h4>Kalp DLT Based Deployments</h4>
                            <span>This guide provides an overview of the essential steps involved in deploying a smart contract on Kalp DLT chain, from setting up the development environment to deploying and verifying your contract on the network and managing your deployment journey on kalp studio.</span>
                        </div>
                        </a>
                             <a href="/API-Reference/Kalp-Storage-API-Documentation/">
                                <div class="card-wrapper">
                                   <img src="images/KRCToken.svg" alt="sdk" />
                                   <h4>API Reference</h4>
                                  <span>Kalp Studio's product API references provide a comprehensive suite of tools for building and managing blockchain-based applications. The API ensures secure, scalable, and efficient interactions with KALP DLT blockchain network.</span>
                              </div>
                                </a>
                             <a href="/Video-Tutorials/Login-into-Kalp-studio">
                                <div class="card-wrapper">
                                  <img src="images/interaction.svg" alt="sdk" />
                                  <h4>Video Tutorials</h4>
                                 <span>Welcome to the Kalp Studio Video Tutorials, your go-to resource for blockchain development with Kalp Studio. Kalp studio tutorials provide clear explanations and practical demos to help you build secure and scalable blockchain applications.</span>
                               </div>
                            </a>
                        </div>
                    </div>
             <div class="quick-start-wrapper">
                 <h3>Quick Start</h3>
                 <span>
                 Are you ready to start building with kalp studio?
                 </span>
                 <div class="quick-start-wrapper-main-wrapper">
                      <a href="/Products/Kalp-Studio-Console/Onboarding/How-to-Sign-Up-to-Kalp-Studio-Platform/" class="quick-link">
                         <div class="quick-start-wrapper-card">
                             <div class="kalp-icon">
                             <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M15.642 18.6161C15.7632 18.5084 15.8814 18.3946 16.0057 18.2885C17.5652 16.9706 18.082 15.1705 17.3743 13.246C17.1015 12.509 16.7044 11.8099 16.3073 11.1244C15.4904 9.71704 14.6417 8.3279 13.7975 6.93572C13.308 6.13044 12.6488 5.80591 12.0001 6.03035C11.603 6.16684 11.453 6.35186 11.703 6.79013C12.87 8.83745 13.9309 10.95 15.1813 12.9442C16.5362 15.1068 15.4056 18.2582 12.4881 18.4826C9.6146 18.704 6.69714 18.5857 3.81606 18.3855C2.0671 18.2642 0.621252 17.3376 0.139303 15.4571C-0.163809 14.2742 0.0514004 13.1186 0.556083 11.9145C0.625799 12.0935 0.68339 12.189 0.701576 12.2936C1.07137 14.5381 2.49903 16.0728 4.74813 16.2033C7.15787 16.3443 9.58429 16.223 12.0046 16.1744C12.6093 16.1623 13.1352 15.8636 13.3065 15.2069C13.4156 14.7868 13.3899 14.4668 12.7852 14.4653C10.4709 14.4592 8.15056 14.3152 5.84085 14.4062C2.94612 14.5245 1.06228 11.6703 2.40658 9.01034C3.55538 6.73706 4.9497 4.58813 6.24096 2.38764C6.35917 2.18594 6.51831 2.00547 6.67289 1.82652C8.92653 -0.765232 11.9364 -0.596897 13.984 2.3194C13.7672 2.24964 13.6263 2.21324 13.4899 2.15864C11.606 1.42616 9.74342 1.87354 8.41427 3.40068C8.12026 3.73887 7.84442 4.10132 7.61709 4.48804C6.60621 6.20779 5.612 7.93663 4.6193 9.667C4.17979 10.4298 4.17828 11.1623 4.59051 11.6567C5.04215 12.2011 5.39527 12.1738 5.74385 11.5687C6.88962 9.58056 8.11419 7.63181 9.16448 5.59359C10.5088 2.98667 14.04 2.85928 15.645 5.41312C16.9226 7.44528 18.0851 9.55478 19.2233 11.6673C19.5915 12.3497 19.8128 13.1474 19.9341 13.9194C20.2417 15.856 19.4688 17.2785 17.6986 18.1065C17.0712 18.4007 16.3801 18.5524 15.7163 18.7692C15.692 18.7177 15.6708 18.6646 15.6465 18.613L15.6465 18.6161L15.642 18.6161ZM10.048 8.6949C9.3812 9.85353 8.76134 10.9288 8.1051 12.0677L11.9865 12.0677C11.3302 10.9272 10.7164 9.8596 10.0465 8.6949L10.048 8.6949Z" fill="#D1D4D6"/>
                             </svg>
                             </div>
                             <div class="quick-start-wrapper-sub-wrapper">
                                <span>How to Sign Up and Log In to Kalp studio Platform</span>
                                 <svg width="16" height="16" viewBox="0 0 16 16" class="arrow-wrapper" fill="none" xmlns="http://www.w3.org/2000/svg">
                                 <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                                 </svg>
                             </div>
                         </div>
                         </a>
                              <a href="/Products/Kalp-Studio-Console/Kalp-studio-wallet/How-to-Create-and-Connect-Wallet-to-Kalp-Studio/" class="quick-link">
                              <div class="quick-start-wrapper-card">
                                  <div class="kalp-icon">
                                  <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                   <path d="M15.642 18.6161C15.7632 18.5084 15.8814 18.3946 16.0057 18.2885C17.5652 16.9706 18.082 15.1705 17.3743 13.246C17.1015 12.509 16.7044 11.8099 16.3073 11.1244C15.4904 9.71704 14.6417 8.3279 13.7975 6.93572C13.308 6.13044 12.6488 5.80591 12.0001 6.03035C11.603 6.16684 11.453 6.35186 11.703 6.79013C12.87 8.83745 13.9309 10.95 15.1813 12.9442C16.5362 15.1068 15.4056 18.2582 12.4881 18.4826C9.6146 18.704 6.69714 18.5857 3.81606 18.3855C2.0671 18.2642 0.621252 17.3376 0.139303 15.4571C-0.163809 14.2742 0.0514004 13.1186 0.556083 11.9145C0.625799 12.0935 0.68339 12.189 0.701576 12.2936C1.07137 14.5381 2.49903 16.0728 4.74813 16.2033C7.15787 16.3443 9.58429 16.223 12.0046 16.1744C12.6093 16.1623 13.1352 15.8636 13.3065 15.2069C13.4156 14.7868 13.3899 14.4668 12.7852 14.4653C10.4709 14.4592 8.15056 14.3152 5.84085 14.4062C2.94612 14.5245 1.06228 11.6703 2.40658 9.01034C3.55538 6.73706 4.9497 4.58813 6.24096 2.38764C6.35917 2.18594 6.51831 2.00547 6.67289 1.82652C8.92653 -0.765232 11.9364 -0.596897 13.984 2.3194C13.7672 2.24964 13.6263 2.21324 13.4899 2.15864C11.606 1.42616 9.74342 1.87354 8.41427 3.40068C8.12026 3.73887 7.84442 4.10132 7.61709 4.48804C6.60621 6.20779 5.612 7.93663 4.6193 9.667C4.17979 10.4298 4.17828 11.1623 4.59051 11.6567C5.04215 12.2011 5.39527 12.1738 5.74385 11.5687C6.88962 9.58056 8.11419 7.63181 9.16448 5.59359C10.5088 2.98667 14.04 2.85928 15.645 5.41312C16.9226 7.44528 18.0851 9.55478 19.2233 11.6673C19.5915 12.3497 19.8128 13.1474 19.9341 13.9194C20.2417 15.856 19.4688 17.2785 17.6986 18.1065C17.0712 18.4007 16.3801 18.5524 15.7163 18.7692C15.692 18.7177 15.6708 18.6646 15.6465 18.613L15.6465 18.6161L15.642 18.6161ZM10.048 8.6949C9.3812 9.85353 8.76134 10.9288 8.1051 12.0677L11.9865 12.0677C11.3302 10.9272 10.7164 9.8596 10.0465 8.6949L10.048 8.6949Z" fill="#D1D4D6"/>
                                  </svg>
                                  </div>
                                  <div class="quick-start-wrapper-sub-wrapper">
                                  <span>How to Create and Connect Wallet to kalp studio</span>
                                  <svg width="16" height="16" viewBox="0 0 16 16" class="arrow-wrapper" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                                  </svg>
                                  </div>
                              </div>
                             </a>
                              <a href="/Products/Kalp-Studio-Console/Kalp-Instant-Deployer/How-to-Deploy-a-Smart-Contract-on-Kalp-Studio/" class="quick-link">
                                 <div class="quick-start-wrapper-card">
                                     <div class="kalp-icon">
                                     <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                      <path d="M15.642 18.6161C15.7632 18.5084 15.8814 18.3946 16.0057 18.2885C17.5652 16.9706 18.082 15.1705 17.3743 13.246C17.1015 12.509 16.7044 11.8099 16.3073 11.1244C15.4904 9.71704 14.6417 8.3279 13.7975 6.93572C13.308 6.13044 12.6488 5.80591 12.0001 6.03035C11.603 6.16684 11.453 6.35186 11.703 6.79013C12.87 8.83745 13.9309 10.95 15.1813 12.9442C16.5362 15.1068 15.4056 18.2582 12.4881 18.4826C9.6146 18.704 6.69714 18.5857 3.81606 18.3855C2.0671 18.2642 0.621252 17.3376 0.139303 15.4571C-0.163809 14.2742 0.0514004 13.1186 0.556083 11.9145C0.625799 12.0935 0.68339 12.189 0.701576 12.2936C1.07137 14.5381 2.49903 16.0728 4.74813 16.2033C7.15787 16.3443 9.58429 16.223 12.0046 16.1744C12.6093 16.1623 13.1352 15.8636 13.3065 15.2069C13.4156 14.7868 13.3899 14.4668 12.7852 14.4653C10.4709 14.4592 8.15056 14.3152 5.84085 14.4062C2.94612 14.5245 1.06228 11.6703 2.40658 9.01034C3.55538 6.73706 4.9497 4.58813 6.24096 2.38764C6.35917 2.18594 6.51831 2.00547 6.67289 1.82652C8.92653 -0.765232 11.9364 -0.596897 13.984 2.3194C13.7672 2.24964 13.6263 2.21324 13.4899 2.15864C11.606 1.42616 9.74342 1.87354 8.41427 3.40068C8.12026 3.73887 7.84442 4.10132 7.61709 4.48804C6.60621 6.20779 5.612 7.93663 4.6193 9.667C4.17979 10.4298 4.17828 11.1623 4.59051 11.6567C5.04215 12.2011 5.39527 12.1738 5.74385 11.5687C6.88962 9.58056 8.11419 7.63181 9.16448 5.59359C10.5088 2.98667 14.04 2.85928 15.645 5.41312C16.9226 7.44528 18.0851 9.55478 19.2233 11.6673C19.5915 12.3497 19.8128 13.1474 19.9341 13.9194C20.2417 15.856 19.4688 17.2785 17.6986 18.1065C17.0712 18.4007 16.3801 18.5524 15.7163 18.7692C15.692 18.7177 15.6708 18.6646 15.6465 18.613L15.6465 18.6161L15.642 18.6161ZM10.048 8.6949C9.3812 9.85353 8.76134 10.9288 8.1051 12.0677L11.9865 12.0677C11.3302 10.9272 10.7164 9.8596 10.0465 8.6949L10.048 8.6949Z" fill="#D1D4D6"/> 
                                     </svg>
                                     </div>
                                     <div class="quick-start-wrapper-sub-wrapper">
                                     <span>How to Deploy a Smart Contract on kalp studio</span>
                                     <svg width="16" height="16" viewBox="0 0 16 16" class="arrow-wrapper" fill="none" xmlns="http://www.w3.org/2000/svg">
                                     <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                                     </svg>
                                     </div>
                                 </div>
                                 </a>
                          <a href="/Products/Kalp-Studio-Console/API-Gateway/How-to-generate-API-endpoints/" class="quick-link">
                             <div class="quick-start-wrapper-card">
                                 <div class="kalp-icon">
                                 <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <path d="M15.642 18.6161C15.7632 18.5084 15.8814 18.3946 16.0057 18.2885C17.5652 16.9706 18.082 15.1705 17.3743 13.246C17.1015 12.509 16.7044 11.8099 16.3073 11.1244C15.4904 9.71704 14.6417 8.3279 13.7975 6.93572C13.308 6.13044 12.6488 5.80591 12.0001 6.03035C11.603 6.16684 11.453 6.35186 11.703 6.79013C12.87 8.83745 13.9309 10.95 15.1813 12.9442C16.5362 15.1068 15.4056 18.2582 12.4881 18.4826C9.6146 18.704 6.69714 18.5857 3.81606 18.3855C2.0671 18.2642 0.621252 17.3376 0.139303 15.4571C-0.163809 14.2742 0.0514004 13.1186 0.556083 11.9145C0.625799 12.0935 0.68339 12.189 0.701576 12.2936C1.07137 14.5381 2.49903 16.0728 4.74813 16.2033C7.15787 16.3443 9.58429 16.223 12.0046 16.1744C12.6093 16.1623 13.1352 15.8636 13.3065 15.2069C13.4156 14.7868 13.3899 14.4668 12.7852 14.4653C10.4709 14.4592 8.15056 14.3152 5.84085 14.4062C2.94612 14.5245 1.06228 11.6703 2.40658 9.01034C3.55538 6.73706 4.9497 4.58813 6.24096 2.38764C6.35917 2.18594 6.51831 2.00547 6.67289 1.82652C8.92653 -0.765232 11.9364 -0.596897 13.984 2.3194C13.7672 2.24964 13.6263 2.21324 13.4899 2.15864C11.606 1.42616 9.74342 1.87354 8.41427 3.40068C8.12026 3.73887 7.84442 4.10132 7.61709 4.48804C6.60621 6.20779 5.612 7.93663 4.6193 9.667C4.17979 10.4298 4.17828 11.1623 4.59051 11.6567C5.04215 12.2011 5.39527 12.1738 5.74385 11.5687C6.88962 9.58056 8.11419 7.63181 9.16448 5.59359C10.5088 2.98667 14.04 2.85928 15.645 5.41312C16.9226 7.44528 18.0851 9.55478 19.2233 11.6673C19.5915 12.3497 19.8128 13.1474 19.9341 13.9194C20.2417 15.856 19.4688 17.2785 17.6986 18.1065C17.0712 18.4007 16.3801 18.5524 15.7163 18.7692C15.692 18.7177 15.6708 18.6646 15.6465 18.613L15.6465 18.6161L15.642 18.6161ZM10.048 8.6949C9.3812 9.85353 8.76134 10.9288 8.1051 12.0677L11.9865 12.0677C11.3302 10.9272 10.7164 9.8596 10.0465 8.6949L10.048 8.6949Z" fill="#D1D4D6"/>
                                 </svg>
                                 </div>
                                 <div class="quick-start-wrapper-sub-wrapper">
                                 <span>How to generate API endpoints</span>
                                 <svg width="16" height="16" class="arrow-wrapper" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                 <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                                 </svg>
                                 </div>
                             </div>
                             </a>
                          <a href="/Products/Kalp-Studio-Console/API-Key-Generation/How-to-generate-API-Key/" class="quick-link">
                             <div class="quick-start-wrapper-card">
                              <div class="kalp-icon">
                              <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                               <path d="M15.642 18.6161C15.7632 18.5084 15.8814 18.3946 16.0057 18.2885C17.5652 16.9706 18.082 15.1705 17.3743 13.246C17.1015 12.509 16.7044 11.8099 16.3073 11.1244C15.4904 9.71704 14.6417 8.3279 13.7975 6.93572C13.308 6.13044 12.6488 5.80591 12.0001 6.03035C11.603 6.16684 11.453 6.35186 11.703 6.79013C12.87 8.83745 13.9309 10.95 15.1813 12.9442C16.5362 15.1068 15.4056 18.2582 12.4881 18.4826C9.6146 18.704 6.69714 18.5857 3.81606 18.3855C2.0671 18.2642 0.621252 17.3376 0.139303 15.4571C-0.163809 14.2742 0.0514004 13.1186 0.556083 11.9145C0.625799 12.0935 0.68339 12.189 0.701576 12.2936C1.07137 14.5381 2.49903 16.0728 4.74813 16.2033C7.15787 16.3443 9.58429 16.223 12.0046 16.1744C12.6093 16.1623 13.1352 15.8636 13.3065 15.2069C13.4156 14.7868 13.3899 14.4668 12.7852 14.4653C10.4709 14.4592 8.15056 14.3152 5.84085 14.4062C2.94612 14.5245 1.06228 11.6703 2.40658 9.01034C3.55538 6.73706 4.9497 4.58813 6.24096 2.38764C6.35917 2.18594 6.51831 2.00547 6.67289 1.82652C8.92653 -0.765232 11.9364 -0.596897 13.984 2.3194C13.7672 2.24964 13.6263 2.21324 13.4899 2.15864C11.606 1.42616 9.74342 1.87354 8.41427 3.40068C8.12026 3.73887 7.84442 4.10132 7.61709 4.48804C6.60621 6.20779 5.612 7.93663 4.6193 9.667C4.17979 10.4298 4.17828 11.1623 4.59051 11.6567C5.04215 12.2011 5.39527 12.1738 5.74385 11.5687C6.88962 9.58056 8.11419 7.63181 9.16448 5.59359C10.5088 2.98667 14.04 2.85928 15.645 5.41312C16.9226 7.44528 18.0851 9.55478 19.2233 11.6673C19.5915 12.3497 19.8128 13.1474 19.9341 13.9194C20.2417 15.856 19.4688 17.2785 17.6986 18.1065C17.0712 18.4007 16.3801 18.5524 15.7163 18.7692C15.692 18.7177 15.6708 18.6646 15.6465 18.613L15.6465 18.6161L15.642 18.6161ZM10.048 8.6949C9.3812 9.85353 8.76134 10.9288 8.1051 12.0677L11.9865 12.0677C11.3302 10.9272 10.7164 9.8596 10.0465 8.6949L10.048 8.6949Z" fill="#D1D4D6"/>
                              </svg>
                              </div>
                              <div class="quick-start-wrapper-sub-wrapper">
                              <span>How to generate API key</span>
                                  <svg width="16" height="16" class="arrow-wrapper" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                                  </svg>
                              </div>
                         </div>
                        </a>
                         <a href="/Products/Kalp-Studio-Console/Transaction-monitoring/How-can-I-monitor-all-my-transactions/" class="quick-link">
                         <div class="quick-start-wrapper-card">
                          <div class="kalp-icon">
                          <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                           <path d="M15.642 18.6161C15.7632 18.5084 15.8814 18.3946 16.0057 18.2885C17.5652 16.9706 18.082 15.1705 17.3743 13.246C17.1015 12.509 16.7044 11.8099 16.3073 11.1244C15.4904 9.71704 14.6417 8.3279 13.7975 6.93572C13.308 6.13044 12.6488 5.80591 12.0001 6.03035C11.603 6.16684 11.453 6.35186 11.703 6.79013C12.87 8.83745 13.9309 10.95 15.1813 12.9442C16.5362 15.1068 15.4056 18.2582 12.4881 18.4826C9.6146 18.704 6.69714 18.5857 3.81606 18.3855C2.0671 18.2642 0.621252 17.3376 0.139303 15.4571C-0.163809 14.2742 0.0514004 13.1186 0.556083 11.9145C0.625799 12.0935 0.68339 12.189 0.701576 12.2936C1.07137 14.5381 2.49903 16.0728 4.74813 16.2033C7.15787 16.3443 9.58429 16.223 12.0046 16.1744C12.6093 16.1623 13.1352 15.8636 13.3065 15.2069C13.4156 14.7868 13.3899 14.4668 12.7852 14.4653C10.4709 14.4592 8.15056 14.3152 5.84085 14.4062C2.94612 14.5245 1.06228 11.6703 2.40658 9.01034C3.55538 6.73706 4.9497 4.58813 6.24096 2.38764C6.35917 2.18594 6.51831 2.00547 6.67289 1.82652C8.92653 -0.765232 11.9364 -0.596897 13.984 2.3194C13.7672 2.24964 13.6263 2.21324 13.4899 2.15864C11.606 1.42616 9.74342 1.87354 8.41427 3.40068C8.12026 3.73887 7.84442 4.10132 7.61709 4.48804C6.60621 6.20779 5.612 7.93663 4.6193 9.667C4.17979 10.4298 4.17828 11.1623 4.59051 11.6567C5.04215 12.2011 5.39527 12.1738 5.74385 11.5687C6.88962 9.58056 8.11419 7.63181 9.16448 5.59359C10.5088 2.98667 14.04 2.85928 15.645 5.41312C16.9226 7.44528 18.0851 9.55478 19.2233 11.6673C19.5915 12.3497 19.8128 13.1474 19.9341 13.9194C20.2417 15.856 19.4688 17.2785 17.6986 18.1065C17.0712 18.4007 16.3801 18.5524 15.7163 18.7692C15.692 18.7177 15.6708 18.6646 15.6465 18.613L15.6465 18.6161L15.642 18.6161ZM10.048 8.6949C9.3812 9.85353 8.76134 10.9288 8.1051 12.0677L11.9865 12.0677C11.3302 10.9272 10.7164 9.8596 10.0465 8.6949L
                           10.048 8.6949Z" fill="#D1D4D6"/>
                          </svg>
                          </div>
                          <div class="quick-start-wrapper-sub-wrapper">
                          <span>How can I monitor all my transactions</span>
                              <svg width="16" height="16" class="arrow-wrapper" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                              </svg>
                          </div>
                     </div>
                    </a>
                 </div>                            
             </div>
</body>
</html>