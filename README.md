🚀 Azure DevOps Mini Project
End-to-End CI/CD Pipeline for a Node.js Web Application on Azure App Service (Docker Container)

This mini-project demonstrates how to build, containerize, and deploy a simple Node.js web application using an automated CI/CD pipeline in Azure DevOps.
The app is deployed into two environments:

DEV environment → azure-mini-webapp-dev

PRODUCTION environment → azure-mini-webapp

The application uses Node.js + Express.js on the backend, with a small interactive HTML/JS frontend. The container image is built using Docker, pushed to Azure Container Registry (ACR), and deployed via Azure App Service using Web App for Containers.

🧩 Project Overview

This project covers:

✔️ Node.js backend

Handles routes, environment-based responses (DEV/PROD), and renders the frontend.

✔️ Interactive frontend

Simple HTML + JavaScript page where users can type text and see them displayed point-by-point.

✔️ Docker containerization

The entire application runs inside a lightweight Node.js Docker container.

✔️ Dual environment deployment

Different branches trigger deployments:

dev branch → DEV ACR → DEV Web App

master branch → PROD ACR → PROD Web App

✔️ Azure DevOps CI/CD Pipeline

Automatically builds and deploys the image on each commit.


🏗️ Technologies Used
Component	Description
Node.js	Backend runtime environment
Express.js	Web server framework
HTML + JavaScript	Frontend interface
Docker	Containerizes the app
Azure Container Registry (ACR)	Stores Docker images
Azure App Service (Web App for Containers)	Hosts the container
Azure DevOps Pipelines	Automates CI/CD
GitHub	Source code repository
