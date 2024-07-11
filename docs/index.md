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
    <title>Kalp Studio Landing Page</title>
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
        .grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 10px; /* Reduced from 20px to tighten the overall grid spacing */
        }
        .card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin: 5px; /* Reduced from 10px to decrease the space between cards */
            padding: 20px;
            text-align: left;
            width: 300px;
            box-sizing: border-box;
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
        .material-icons, .octicon {
            vertical-align: middle;
            margin-right: 8px;
        }
        footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            margin-top: 20px;
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
            justify-content: center!important;
         }
         .developer-resource-card-wrapper{
          padding: 0 10px;
          }
        }
        @media only screen and (max-width: 600px) {
          .second-section, .developer-resource-card-wrapper{
             display: flex;
             flex-direction: column;
             align-items: center;
             justify-content: center;
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
        .build-title-sub-wrapper h4 {
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
        .md-grid {
            max-width: unset;
        }
        .md-content__inner {
            margin: 0;
        }
        .developer-resource-sub-wrapper {
            display: flex;
            align-items: center;
            flex-direction: column;
        }
        .developer-resource-sub-wrapper h1 {
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
            display: flex;
            max-width: 61rem;
            gap: 22px;
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
            h1 {
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
            max-width: 392px;
            width: 100%;
            padding: 30px;
            box-shadow: 0px 4px 20px 0px rgba(0, 0, 0, 0.02);
            border-radius: 20px;
            border: 2px solid #EFEFEF;
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
</head>
<body>
    <header class="header-main-wrapper">
        <div class="header">
         <h1>Simplify <span class="header-main-text">Web 3.0</span> development with the Kalp studio documentation!</h1>
                <div class="note">
                Dive headfirst into Web 3.0 development with Kalp Studio! Our user-friendly documentation equips you with everything you need to unlock the potential of the Kalp Blockchain.
                <br />
                <br />
                Kalp studio empowers developers of all skill levels to navigate the exciting realm of Web 3.0 development using the robust Kalp Blockchain. It leverages a low-code approach, enabling both beginners and seasoned Web 2.0 developers to effortlessly create cutting-edge Web 3.0 applications or seamlessly extend existing applications into the decentralized world.
                </div>
        </div>
       <img src="images/BannerImage.svg" alt="image-banner" />
    </header>
          <div class="second-section">
                <div class="build-wrapper">
                      <div class="build-wrapper-header">
                         <img src="images/setting.svg" alt="setting-img" />
                          <div class="build-title-sub-wrapper">
                             <h4>
                               Build
                             </h4>
                             <span>
                                 Getting started & Building with Kalp Studio.
                              </span>
                          </div>
                      </div>
                  <div class="build-description-card-main">
                    <div class="build-description-card">
                        <div class="build-description-card-title">
                            Onboarding
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                            </svg>
                        </div>
                        <span class="build-description-card-description">
                        Start your blockchain journey with our seamless onboarding process designed to get you up and running in no time. KALP Studio provides a user-friendly interface that guides you through every step, ensuring a hassle-free setup.
                        </span>
                    </div>
                     <div class="build-description-card">
                        <div class="build-description-card-title">
                            Dashboard
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                            </svg>
                        </div>
                        <span class="build-description-card-description">
                        The KALP Studio Dashboard provides an all-in-one overview of your blockchain projects, giving you real-time insights and control over your operations.
                        </span>
                    </div>
                     <div class="build-description-card">
                        <div class="build-description-card-title">
                            Smart Contract Management
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                            </svg>
                        </div>
                        <span class="build-description-card-description">
                        KALP Studio simplifies the process of writing, deploying, and managing smart contracts, making it accessible to both beginners and experienced developers.
                        </span>
                    </div>
                     <div class="build-description-card">
                        <div class="build-description-card-title">
                            Wallet Management
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                            </svg>
                        </div>
                        <span class="build-description-card-description">
                        Manage your digital assets effortlessly with KALP Studio's comprehensive wallet management features.
                        </span>
                    </div>
                     <div class="build-description-card">
                        <div class="build-description-card-title">
                            API Gateway Management
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                            </svg>
                        </div>
                        <span class="build-description-card-description">
                        KALP Studio's API Gateway Management simplifies the process of generating and managing API endpoints for your smart contracts.
                        </span>
                    </div>
                     <div class="build-description-card">
                        <div class="build-description-card-title">
                            Transaction Monitoring
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                            </svg>
                        </div>
                        <span class="build-description-card-description">
                        Stay on top of your blockchain transactions with KALP Studio's advanced transaction monitoring tools.
                        </span>
                    </div>
                    <div class="build-description-card">
                        <div class="build-description-card-title">
                            Settings
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                            </svg>
                        </div>
                        <span class="build-description-card-description">
                        Tailor your KALP Studio environment to meet your specific needs with our extensive settings options.
                        </span>
                    </div>
                    <div class="build-description-card">
                        <div class="build-description-card-title">
                            Subscription
                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                            </svg>
                        </div>
                        <span class="build-description-card-description">
                        Choose from a variety of subscription plans designed to fit your needs and scale with your growth.
                        </span>
                    </div>
              </div>
        </div>
               <div class="build-wrapper">
                     <div class="build-wrapper-header">
                        <img src="images/learn.svg" alt="setting-img" />
                         <div class="build-title-sub-wrapper">
                            <h4>
                              Learn
                            </h4>
                            <span>
                                Further your understanding of entire kalp studio ecosystem.
                             </span>
                         </div>
                     </div>
                 <div class="build-description-card-main">
                    <div class="build-description-card">
                           <div class="build-description-card-title">
                               Kalp studio overview
                               <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                               <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                               </svg>
                           </div>
                           <span class="build-description-card-description">
                                 Kalp Studio empowers developers of all skill levels to navigate the exciting realm of Web 3.0 development using the robust Kalptantra Blockchain. It leverages a low-code approach, enabling both beginners and seasoned Web 2.0 developers to effortlessly create cutting-edge Web 3.0 applications or seamlessly extend existing applications into the decentralized world.
                            </span>
                       </div>
                        <div class="build-description-card">
                           <div class="build-description-card-title">
                               Kalp studio ecosystem
                               <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                               <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                               </svg>
                           </div>
                            <span class="build-description-card-description">
                               The KALP Studio ecosystem is a suite of interconnected products, each tailored to specific aspects of blockchain development and management. Together, it provide a seamless experience for building, managing, and scaling blockchain projects. KALP Studio Console is Your central hub for accessing and managing all KALP Studio services. Token Studio Simplifies the process of creating and managing custom tokens with our easy-to-use tools. Wallet Management Securely manages your digital assets across multiple blockchain networks. KALP Instant Deployer Efficiently write, deploy, and manage smart contracts with our high-performance system. Additional tools are for managing subscriptions, generating API keys, and monitoring transactions.
                          </span>
                       </div>
                    <div class="build-description-card">
                       <div class="build-description-card-title">
                           Kalp blockchain
                           <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                           <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                           </svg>
                       </div>
                        <span class="build-description-card-description">
                           The Kalp Decentralized Network (KDN) is a meticulously designed hybrid cross-chain ecosystem that prioritizes secure and compliant tokenization of real-world assets (RWAs). KDN leverages KYC verification and a Distributed Certificate Authority (DCA) to establish a trustworthy environment. High-performance Byzantine Fault Tolerance (BFT) also known as SMART-BFT algorithms ensures optimal transaction processing and consensus across networks.
                           Key to Kalps proposition is its cross-chain interoperability, facilitated by a comprehensive gateway and Oracle layer protocols, ensuring fluid communication and data integration across blockchain landscapes. The Cross-Chain Layer bridges Kalp with external networks, enhancing the liquidity and market reach of tokenized assets. Kalp decentralized network (KDN) establishing itself as a comprehensive ecosystem driving the future of regulated asset tokenization and cross-chain functionality, all underpinned by the core principles of decentralized peer-to-peer (P2P) blockchain technology.
                           Positioning itself as a pivotal player in the blockchain space, Kalps Asset Tokenization, called Kalpify, provides a transparent, compliant pathway for transforming RWAs into digital tokens. This opens new avenues for asset management and investment, redefining asset liquidity and accessibility in the modern digital era. 
                      </span>
                   </div>
                       <div class="build-description-card">
                         <div class="build-description-card-title">
                             What is API Gateway
                             <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                             <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                             </svg>
                         </div>
                          <span class="build-description-card-description">
                             The API Gateway in KALP Studio simplifies the process of generating and managing API endpoints for your smart contracts, providing a powerful integration point for your blockchain applications.
                        </span>
                     </div>
                   </div>
                </div>
             </div>
             <div class="developer-resource">
                    <div class="developer-resource-sub-wrapper">
                        <h1>
                         Developer Resources
                        </h1>
                        <span>
                        For developers who know what they want to build and are ready to go.
                        </span>
                    </div>
                    <div class="developer-resource-card-wrapper">
                        <div class="dote-wrapper"></div>
                        <div class="dote-wrapper-green"></div>
                            <div class="card-wrapper">
                                 <img src="images/kalpSdk.svg" alt="sdk" />
                                 <h4>Kalp SDK</h4>
                                <span>The Kalp SDK provides a robust set of tools and functionalities designed to streamline your development journey. Whether you're a seasoned blockchain developer or just starting your Web 3.0 exploration, the Kalp SDK offers a comprehensive solution to simplify building, deploying, and managing your decentralized applications (DApps).</span>
                            </div>
                            <div class="card-wrapper">
                                <img src="images/KRCToken.svg" alt="sdk" />
                                <h4>KRC Token standard</h4>
                               <span>KRC token standards serve as the foundation for creating a thriving and interoperable tokenized ecosystem on the Kalp blockchain. By adhering to these standards, developers can build tokens that seamlessly integrate with various applications and services, fostering a vibrant environment of innovation and diverse functionalities.</span>
                           </div>
                           <div class="card-wrapper">
                               <img src="images/interaction.svg" alt="sdk" />
                               <h4>Write, Test, Deploy & Interact</h4>
                              <span>Welcome to your comprehensive guide on building the backbone of decentralized applications – smart contracts. This guide empowers you to take control, from the initial spark of an idea to a fully-fledged blockchain implementation.</span>
                            </div>
                        </div>
                    </div>
             <div class="quick-start-wrapper">
                 <h1>Quick Start</h1>
                 <span>
                 Are you ready to start building?
                 </span>
                 <div class="quick-start-wrapper-main-wrapper">
                     <div class="quick-start-wrapper-card">
                         <div class="kalp-icon">
                         <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M15.642 18.6161C15.7632 18.5084 15.8814 18.3946 16.0057 18.2885C17.5652 16.9706 18.082 15.1705 17.3743 13.246C17.1015 12.509 16.7044 11.8099 16.3073 11.1244C15.4904 9.71704 14.6417 8.3279 13.7975 6.93572C13.308 6.13044 12.6488 5.80591 12.0001 6.03035C11.603 6.16684 11.453 6.35186 11.703 6.79013C12.87 8.83745 13.9309 10.95 15.1813 12.9442C16.5362 15.1068 15.4056 18.2582 12.4881 18.4826C9.6146 18.704 6.69714 18.5857 3.81606 18.3855C2.0671 18.2642 0.621252 17.3376 0.139303 15.4571C-0.163809 14.2742 0.0514004 13.1186 0.556083 11.9145C0.625799 12.0935 0.68339 12.189 0.701576 12.2936C1.07137 14.5381 2.49903 16.0728 4.74813 16.2033C7.15787 16.3443 9.58429 16.223 12.0046 16.1744C12.6093 16.1623 13.1352 15.8636 13.3065 15.2069C13.4156 14.7868 13.3899 14.4668 12.7852 14.4653C10.4709 14.4592 8.15056 14.3152 5.84085 14.4062C2.94612 14.5245 1.06228 11.6703 2.40658 9.01034C3.55538 6.73706 4.9497 4.58813 6.24096 2.38764C6.35917 2.18594 6.51831 2.00547 6.67289 1.82652C8.92653 -0.765232 11.9364 -0.596897 13.984 2.3194C13.7672 2.24964 13.6263 2.21324 13.4899 2.15864C11.606 1.42616 9.74342 1.87354 8.41427 3.40068C8.12026 3.73887 7.84442 4.10132 7.61709 4.48804C6.60621 6.20779 5.612 7.93663 4.6193 9.667C4.17979 10.4298 4.17828 11.1623 4.59051 11.6567C5.04215 12.2011 5.39527 12.1738 5.74385 11.5687C6.88962 9.58056 8.11419 7.63181 9.16448 5.59359C10.5088 2.98667 14.04 2.85928 15.645 5.41312C16.9226 7.44528 18.0851 9.55478 19.2233 11.6673C19.5915 12.3497 19.8128 13.1474 19.9341 13.9194C20.2417 15.856 19.4688 17.2785 17.6986 18.1065C17.0712 18.4007 16.3801 18.5524 15.7163 18.7692C15.692 18.7177 15.6708 18.6646 15.6465 18.613L15.6465 18.6161L15.642 18.6161ZM10.048 8.6949C9.3812 9.85353 8.76134 10.9288 8.1051 12.0677L11.9865 12.0677C11.3302 10.9272 10.7164 9.8596 10.0465 8.6949L10.048 8.6949Z" fill="#D1D4D6"/>
                         </svg>
                         </div>
                         <div class="quick-start-wrapper-sub-wrapper">
                            <span>Create an account and KYC on Kalp Studio</span>
                             <svg width="16" height="16" viewBox="0 0 16 16" class="arrow-wrapper" fill="none" xmlns="http://www.w3.org/2000/svg">
                             <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                             </svg>
                         </div>
                     </div>
                     <div class="quick-start-wrapper-card">
                         <div class="kalp-icon">
                         <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M15.642 18.6161C15.7632 18.5084 15.8814 18.3946 16.0057 18.2885C17.5652 16.9706 18.082 15.1705 17.3743 13.246C17.1015 12.509 16.7044 11.8099 16.3073 11.1244C15.4904 9.71704 14.6417 8.3279 13.7975 6.93572C13.308 6.13044 12.6488 5.80591 12.0001 6.03035C11.603 6.16684 11.453 6.35186 11.703 6.79013C12.87 8.83745 13.9309 10.95 15.1813 12.9442C16.5362 15.1068 15.4056 18.2582 12.4881 18.4826C9.6146 18.704 6.69714 18.5857 3.81606 18.3855C2.0671 18.2642 0.621252 17.3376 0.139303 15.4571C-0.163809 14.2742 0.0514004 13.1186 0.556083 11.9145C0.625799 12.0935 0.68339 12.189 0.701576 12.2936C1.07137 14.5381 2.49903 16.0728 4.74813 16.2033C7.15787 16.3443 9.58429 16.223 12.0046 16.1744C12.6093 16.1623 13.1352 15.8636 13.3065 15.2069C13.4156 14.7868 13.3899 14.4668 12.7852 14.4653C10.4709 14.4592 8.15056 14.3152 5.84085 14.4062C2.94612 14.5245 1.06228 11.6703 2.40658 9.01034C3.55538 6.73706 4.9497 4.58813 6.24096 2.38764C6.35917 2.18594 6.51831 2.00547 6.67289 1.82652C8.92653 -0.765232 11.9364 -0.596897 13.984 2.3194C13.7672 2.24964 13.6263 2.21324 13.4899 2.15864C11.606 1.42616 9.74342 1.87354 8.41427 3.40068C8.12026 3.73887 7.84442 4.10132 7.61709 4.48804C6.60621 6.20779 5.612 7.93663 4.6193 9.667C4.17979 10.4298 4.17828 11.1623 4.59051 11.6567C5.04215 12.2011 5.39527 12.1738 5.74385 11.5687C6.88962 9.58056 8.11419 7.63181 9.16448 5.59359C10.5088 2.98667 14.04 2.85928 15.645 5.41312C16.9226 7.44528 18.0851 9.55478 19.2233 11.6673C19.5915 12.3497 19.8128 13.1474 19.9341 13.9194C20.2417 15.856 19.4688 17.2785 17.6986 18.1065C17.0712 18.4007 16.3801 18.5524 15.7163 18.7692C15.692 18.7177 15.6708 18.6646 15.6465 18.613L15.6465 18.6161L15.642 18.6161ZM10.048 8.6949C9.3812 9.85353 8.76134 10.9288 8.1051 12.0677L11.9865 12.0677C11.3302 10.9272 10.7164 9.8596 10.0465 8.6949L10.048 8.6949Z" fill="#D1D4D6"/>
                         </svg>
                         </div>
                         <div class="quick-start-wrapper-sub-wrapper">
                         <span>Create, Manage & Edit Kalp Studio project</span>
                         <svg width="16" height="16" viewBox="0 0 16 16" class="arrow-wrapper" fill="none" xmlns="http://www.w3.org/2000/svg">
                         <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                         </svg>
                         </div>
                     </div>
                     <div class="quick-start-wrapper-card">
                         <div class="kalp-icon">
                         <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M15.642 18.6161C15.7632 18.5084 15.8814 18.3946 16.0057 18.2885C17.5652 16.9706 18.082 15.1705 17.3743 13.246C17.1015 12.509 16.7044 11.8099 16.3073 11.1244C15.4904 9.71704 14.6417 8.3279 13.7975 6.93572C13.308 6.13044 12.6488 5.80591 12.0001 6.03035C11.603 6.16684 11.453 6.35186 11.703 6.79013C12.87 8.83745 13.9309 10.95 15.1813 12.9442C16.5362 15.1068 15.4056 18.2582 12.4881 18.4826C9.6146 18.704 6.69714 18.5857 3.81606 18.3855C2.0671 18.2642 0.621252 17.3376 0.139303 15.4571C-0.163809 14.2742 0.0514004 13.1186 0.556083 11.9145C0.625799 12.0935 0.68339 12.189 0.701576 12.2936C1.07137 14.5381 2.49903 16.0728 4.74813 16.2033C7.15787 16.3443 9.58429 16.223 12.0046 16.1744C12.6093 16.1623 13.1352 15.8636 13.3065 15.2069C13.4156 14.7868 13.3899 14.4668 12.7852 14.4653C10.4709 14.4592 8.15056 14.3152 5.84085 14.4062C2.94612 14.5245 1.06228 11.6703 2.40658 9.01034C3.55538 6.73706 4.9497 4.58813 6.24096 2.38764C6.35917 2.18594 6.51831 2.00547 6.67289 1.82652C8.92653 -0.765232 11.9364 -0.596897 13.984 2.3194C13.7672 2.24964 13.6263 2.21324 13.4899 2.15864C11.606 1.42616 9.74342 1.87354 8.41427 3.40068C8.12026 3.73887 7.84442 4.10132 7.61709 4.48804C6.60621 6.20779 5.612 7.93663 4.6193 9.667C4.17979 10.4298 4.17828 11.1623 4.59051 11.6567C5.04215 12.2011 5.39527 12.1738 5.74385 11.5687C6.88962 9.58056 8.11419 7.63181 9.16448 5.59359C10.5088 2.98667 14.04 2.85928 15.645 5.41312C16.9226 7.44528 18.0851 9.55478 19.2233 11.6673C19.5915 12.3497 19.8128 13.1474 19.9341 13.9194C20.2417 15.856 19.4688 17.2785 17.6986 18.1065C17.0712 18.4007 16.3801 18.5524 15.7163 18.7692C15.692 18.7177 15.6708 18.6646 15.6465 18.613L15.6465 18.6161L15.642 18.6161ZM10.048 8.6949C9.3812 9.85353 8.76134 10.9288 8.1051 12.0677L11.9865 12.0677C11.3302 10.9272 10.7164 9.8596 10.0465 8.6949L10.048 8.6949Z" fill="#D1D4D6"/>
                         </svg>
                         </div>
                         <div class="quick-start-wrapper-sub-wrapper">
                         <span>Write, Test, Deploy & Interact with Kalp Studio</span>
                         <svg width="16" height="16" viewBox="0 0 16 16" class="arrow-wrapper" fill="none" xmlns="http://www.w3.org/2000/svg">
                         <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                         </svg>
                         </div>
                     </div>
                       <div class="quick-start-wrapper-card">
                             <div class="kalp-icon">
                             <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M15.642 18.6161C15.7632 18.5084 15.8814 18.3946 16.0057 18.2885C17.5652 16.9706 18.082 15.1705 17.3743 13.246C17.1015 12.509 16.7044 11.8099 16.3073 11.1244C15.4904 9.71704 14.6417 8.3279 13.7975 6.93572C13.308 6.13044 12.6488 5.80591 12.0001 6.03035C11.603 6.16684 11.453 6.35186 11.703 6.79013C12.87 8.83745 13.9309 10.95 15.1813 12.9442C16.5362 15.1068 15.4056 18.2582 12.4881 18.4826C9.6146 18.704 6.69714 18.5857 3.81606 18.3855C2.0671 18.2642 0.621252 17.3376 0.139303 15.4571C-0.163809 14.2742 0.0514004 13.1186 0.556083 11.9145C0.625799 12.0935 0.68339 12.189 0.701576 12.2936C1.07137 14.5381 2.49903 16.0728 4.74813 16.2033C7.15787 16.3443 9.58429 16.223 12.0046 16.1744C12.6093 16.1623 13.1352 15.8636 13.3065 15.2069C13.4156 14.7868 13.3899 14.4668 12.7852 14.4653C10.4709 14.4592 8.15056 14.3152 5.84085 14.4062C2.94612 14.5245 1.06228 11.6703 2.40658 9.01034C3.55538 6.73706 4.9497 4.58813 6.24096 2.38764C6.35917 2.18594 6.51831 2.00547 6.67289 1.82652C8.92653 -0.765232 11.9364 -0.596897 13.984 2.3194C13.7672 2.24964 13.6263 2.21324 13.4899 2.15864C11.606 1.42616 9.74342 1.87354 8.41427 3.40068C8.12026 3.73887 7.84442 4.10132 7.61709 4.48804C6.60621 6.20779 5.612 7.93663 4.6193 9.667C4.17979 10.4298 4.17828 11.1623 4.59051 11.6567C5.04215 12.2011 5.39527 12.1738 5.74385 11.5687C6.88962 9.58056 8.11419 7.63181 9.16448 5.59359C10.5088 2.98667 14.04 2.85928 15.645 5.41312C16.9226 7.44528 18.0851 9.55478 19.2233 11.6673C19.5915 12.3497 19.8128 13.1474 19.9341 13.9194C20.2417 15.856 19.4688 17.2785 17.6986 18.1065C17.0712 18.4007 16.3801 18.5524 15.7163 18.7692C15.692 18.7177 15.6708 18.6646 15.6465 18.613L15.6465 18.6161L15.642 18.6161ZM10.048 8.6949C9.3812 9.85353 8.76134 10.9288 8.1051 12.0677L11.9865 12.0677C11.3302 10.9272 10.7164 9.8596 10.0465 8.6949L10.048 8.6949Z" fill="#D1D4D6"/>
                             </svg>
                             </div>
                             <div class="quick-start-wrapper-sub-wrapper">
                             <span>How to manage funds in Kalp Studio</span>
                             <svg width="16" height="16" class="arrow-wrapper" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                             <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                             </svg>
                             </div>
                         </div>
                       <div class="quick-start-wrapper-card">
                             <div class="kalp-icon">
                             <svg width="20" height="19" viewBox="0 0 20 19" fill="none" xmlns="http://www.w3.org/2000/svg">
                              <path d="M15.642 18.6161C15.7632 18.5084 15.8814 18.3946 16.0057 18.2885C17.5652 16.9706 18.082 15.1705 17.3743 13.246C17.1015 12.509 16.7044 11.8099 16.3073 11.1244C15.4904 9.71704 14.6417 8.3279 13.7975 6.93572C13.308 6.13044 12.6488 5.80591 12.0001 6.03035C11.603 6.16684 11.453 6.35186 11.703 6.79013C12.87 8.83745 13.9309 10.95 15.1813 12.9442C16.5362 15.1068 15.4056 18.2582 12.4881 18.4826C9.6146 18.704 6.69714 18.5857 3.81606 18.3855C2.0671 18.2642 0.621252 17.3376 0.139303 15.4571C-0.163809 14.2742 0.0514004 13.1186 0.556083 11.9145C0.625799 12.0935 0.68339 12.189 0.701576 12.2936C1.07137 14.5381 2.49903 16.0728 4.74813 16.2033C7.15787 16.3443 9.58429 16.223 12.0046 16.1744C12.6093 16.1623 13.1352 15.8636 13.3065 15.2069C13.4156 14.7868 13.3899 14.4668 12.7852 14.4653C10.4709 14.4592 8.15056 14.3152 5.84085 14.4062C2.94612 14.5245 1.06228 11.6703 2.40658 9.01034C3.55538 6.73706 4.9497 4.58813 6.24096 2.38764C6.35917 2.18594 6.51831 2.00547 6.67289 1.82652C8.92653 -0.765232 11.9364 -0.596897 13.984 2.3194C13.7672 2.24964 13.6263 2.21324 13.4899 2.15864C11.606 1.42616 9.74342 1.87354 8.41427 3.40068C8.12026 3.73887 7.84442 4.10132 7.61709 4.48804C6.60621 6.20779 5.612 7.93663 4.6193 9.667C4.17979 10.4298 4.17828 11.1623 4.59051 11.6567C5.04215 12.2011 5.39527 12.1738 5.74385 11.5687C6.88962 9.58056 8.11419 7.63181 9.16448 5.59359C10.5088 2.98667 14.04 2.85928 15.645 5.41312C16.9226 7.44528 18.0851 9.55478 19.2233 11.6673C19.5915 12.3497 19.8128 13.1474 19.9341 13.9194C20.2417 15.856 19.4688 17.2785 17.6986 18.1065C17.0712 18.4007 16.3801 18.5524 15.7163 18.7692C15.692 18.7177 15.6708 18.6646 15.6465 18.613L15.6465 18.6161L15.642 18.6161ZM10.048 8.6949C9.3812 9.85353 8.76134 10.9288 8.1051 12.0677L11.9865 12.0677C11.3302 10.9272 10.7164 9.8596 10.0465 8.6949L10.048 8.6949Z" fill="#D1D4D6"/>
                             </svg>
                             </div>
                             <div class="quick-start-wrapper-sub-wrapper">
                             <span>View & Edit kalp studio settings</span>
                                 <svg width="16" height="16" class="arrow-wrapper" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                 <path d="M12.8923 4.99995L11.0622 11.8301L9.10644 11.3426L10.0581 7.79098L3 11.866L2 10.1339L9.05811 6.05893L5.50644 5.10726L6.06218 3.16982L12.8923 4.99995Z" fill="black"/>
                                 </svg>
                             </div>
                        </div>
                 </div>                            
             </div>

</body>
</html>