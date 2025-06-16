# Project Template

[![Node 22.16.0](https://img.shields.io/badge/Node-22.16.0-green.svg)](https://shields.io/)

This repository contains the starter code for a Node project.

### 🗂️ Project layout

This project is organized into two main parts: the backend and the frontend. 

- The **backend** contains the NestJS application code, organized following the **modular architecture** typical of NestJS, where modules, controllers, and services are separated for clarity and scalability.
- The **frontend** contains the React application code.

```text
├── backend/           <- NestJS backend application
│   ├── src/           <- source files (modules, controllers, services)
│   ├── test/          <- backend unit and e2e tests
│   ├── package.json   <- backend dependencies and scripts
│   └── tsconfig.json  <- TypeScript config for backend
├── frontend/          <- React frontend application
│   ├── public/        <- static files like index.html
│   ├── src/           <- React source files (components, pages, hooks)
│   ├── package.json   <- frontend dependencies and scripts
│   └── tsconfig.json  <- TypeScript config for frontend (if used)
├── bin/               <- setup scripts like setup.sh
├── README.md          <- project documentation
└── package.json       <- root package file if using workspaces or tooling
```

### 📦 Getting started

1. 📋  **Prerequisites**
   
   Ensure the following tools are installed:
   - curl
   - Git

2. 🛠️  **Development Environment**
   
   You can initialize the project environment by running:

   ```bash
   bash bin/setup.sh
   ```

   This will install Node v22.16.0, nestjs/cli and dependencies for both the frontend (React) and backend (NestJS).

3. 🚀 **Running the app**

   For starting the NestJS backend run:
   
   ```bash
   cd backend
   npm run start:dev
   ```

   For starting the React frontend run:
   
   ```bash
   cd frontend
   npm start
   ```

### ✅ Linting and Fromatting

- Eslint is used in the project to enforce code style and should be configured in your [editor](https://eslint.org/docs/user-guide/integrations).

- Prettier is also used and apply automatically by eslint

You can ask eslint to fix issues by running:

```bash
npm run lint
```

### 🧪 Testing

Use the following command to run unit tests:

```bash
npm run test
```

Use the following to run unit tests in watch mode while developing:


```bash
$ npm run test:watch
```
