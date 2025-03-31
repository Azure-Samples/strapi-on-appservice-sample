# Strapi on Azure App Service Sample

This repository demonstrates how to deploy [Strapi](https://strapi.io/), an open-source headless CMS, on [Azure App Service](https://azure.microsoft.com/en-us/services/app-service/). The sample includes step-by-step instructions, pre-configured code, and an ARM template to automate the deployment process.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Architecture](#architecture)
- [Prerequisites](#prerequisites)
- [Deployment Instructions](#deployment-instructions)

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

Before proceeding, make sure you have the following installed:

- [Node.js](https://nodejs.org/) 
- [Git](https://git-scm.com/)
- An [Azure account](https://azure.microsoft.com/en-us/free/) with the necessary permissions to create App Services
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) (optional but recommended)

## Deployment Instructions

- Clone the repository.
- Log in to Azure using the CLI with the command `az login`.
- Update the parameters in `azure-quickstart-template/armtemplate.parameters.json` as per the requirement.
- Trigger an ARM template deployment using the command below:

```bash
az deployment group create \
    --resource-group "your-resource-group-name" \
    --name "your-deployment-name" \
    --template-file "azure-quickstart-template/armtemplate.json" \
    --parameters "azure-quickstart-template/armtemplate.parameters.json"
```
