# Strapi on Azure App Service Sample

This repository demonstrates how to deploy [Strapi](https://strapi.io/), an open-source headless CMS, on [Azure App Service](https://azure.microsoft.com/en-us/services/app-service/). The sample includes step-by-step instructions, pre-configured code, and an ARM template to automate the deployment process.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Architecture](#architecture)
- [Prerequisites](#prerequisites)
- [Deployment Instructions](#deployment-instructions)
- [Support](#support)

## Overview

This repository contains all the necessary configuration files and instructions to deploy a production-ready Strapi instance on Azure App Service. It offers a quick-start guide to get your Strapi application up and running in the Azure with minimal setup.

## Features

- **Azure App Service Integration:** Run your Strapi instance directly on Azure.
- **ARM Template:** Automate the creation of your Azure infrastructure (Resource Group, App Service Plan, and Web App).
- **Scalability:** Leverage Azure's scalable platform to handle production workloads.
- **Customizable Configuration:** Easily modify settings for environment variables and database connections to suit your needs.

## Architecture

The solution is structured as a Node.js application hosted on Azure App Service. Key components include:

- **Strapi Backend:** A customizable headless CMS powering your content management needs.
- **Azure App Service:** Provides the hosting environment for the application.
- **ARM Template:** Automates the deployment of essential Azure resources, streamlining the setup process.
- **Configuration Files:** Manage environment settings, deployment scripts, and resource definitions.

## Prerequisites

Before proceeding, make sure you have the following:

- [Git](https://git-scm.com/)
- An [Azure account](https://azure.microsoft.com/en-us/free/) with necessary permissions to create App Services.
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed (optional but recommended)

## Deployment Instructions

Follow these steps to deploy the Strapi application on Azure:

1. **Clone the Repository**  
   Clone this repository to your local machine:

   ```bash
   git clone https://github.com/Azure-Samples/strapi-on-appservice-sample.git
   cd strapi-on-appservice-sample
   ```

2. **Log in to Azure**  
   Use the Azure CLI to log in to your Azure account:

   ```bash
   az login
   ```

3. **Update Deployment Parameters**  
   Open the `azure-quickstart-template/armtemplate.parameters.json` file and update the parameters.

4. **Deploy the ARM Template**  
   Run the following command to deploy the ARM template:

   ```bash
   az deployment group create \
       --resource-group "<your-resource-group-name>" \
       --name "<your-deployment-name>" \
       --template-file "azure-quickstart-template/armtemplate.json" \
       --parameters "azure-quickstart-template/armtemplate.parameters.json"
   ```

5. **Verify Deployment**  
   Once the deployment is complete, navigate to the Azure Portal to verify that the resources (App Service, Database, etc.) have been created successfully.

Alternatively, you can use the following button for a quick deployment:

[![Deploy to Azure](./images/deploytoazure.svg)](https://ms.portal.azure.com/#create/microsoftazureappservices.strapi-on-app-servicesbasicplan)  

## Support

If you encounter any issues or need assistance, refer to the following resources:

- [Strapi on App Service - Overview](https://techcommunity.microsoft.com/blog/appsonazureblog/strapi-on-app-service-overview/4401396)
- [Strapi on App Service - Quickstart](https://techcommunity.microsoft.com/blog/appsonazureblog/strapi-on-app-service-quick-start/4401398)
- [Strapi on App Service - FAQs](https://techcommunity.microsoft.com/blog/appsonazureblog/strapi-on-app-service-faq/4401397)
- [File an Issue](https://portal.azure.com/#view/Microsoft_Azure_Support/NewSupportRequestV3Blade)
