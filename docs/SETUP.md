# 🚀 Bebe AI Fashion Platform - Setup Guide

## Prerequisites

- Node.js 20+
- Docker & Docker Compose
- Google Cloud account
- Shopify store (maestro-ai-qrc97.myshopify.com)
- Git

## Step 1: Clone Repository

```bash
git clone https://github.com/beberaygardon32-maker/Bebe-Ai-Fashion-.git
cd Bebe-Ai-Fashion-
```

## Step 2: Setup Environment Variables

```bash
cp ai-backend/.env.example ai-backend/.env
```

Edit `ai-backend/.env` and add:
```
SHOPIFY_STORE=maestro-ai-qrc97.myshopify.com
SHOPIFY_ACCESS_TOKEN=your_token
GOOGLE_PROJECT_ID=your_project_id
```

## Step 3: Install Dependencies

```bash
cd ai-backend
npm install

cd ../admin-dashboard
npm install
```

## Step 4: Run Locally

```bash
cd ..
docker compose up --build
```

Access:
- AI Backend: http://localhost:8080
- Admin Dashboard: http://localhost:3000

## Step 5: Deploy to Google Cloud

```bash
bash cloud/deployment.sh
```

## Step 6: Connect Shopify

```bash
cd shopify-theme
shopify login
shopify theme dev --store maestro-ai-qrc97.myshopify.com
shopify theme push
```

Done! 🎉