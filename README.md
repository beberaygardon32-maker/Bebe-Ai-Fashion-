# ✨ Bebe AI Fashion Platform

**AI-powered luxury fashion commerce ecosystem**

An end-to-end platform combining Shopify storefront, AI shopping assistant, Google Cloud backend, mobile app, live shopping, and business analytics.

---

## 🎯 Platform Overview

```
             Customers
                 |
                 ↓
          🛒 Shopify Store
                 |
    ┌────────────┼────────────┐
    ↓            ↓            ↓
🤖 Bebe AI     📱 Mobile    🎥 Live 
Assistant       App         Shopping 
                |
                ↓
           ☁️ Google Cloud
                |
    ┌───────────┼───────────┐
    ↓           ↓           ↓
   AI       Database    Analytics
```

---

## 📦 System Components

### 🛒 **Shopify Storefront** (`/shopify-theme`)
- Luxury fashion homepage with gradient aesthetic
- AI Stylist widget for customer interactions
- VIP membership pages
- Rewards program integration
- Live shopping event pages
- Fashion blog & style guides

### 🤖 **AI Backend** (`/ai-backend`)
- Express.js API running on Google Cloud Run
- Fashion AI engine with style recommendations
- Customer conversation memory
- Multi-language translation support
- Shopify product sync
- Rewards points automation
- Analytics tracking

### 📊 **Admin Dashboard** (`/admin-dashboard`)
- Real-time sales analytics
- Customer insights & behavior
- AI conversation reports
- Inventory management
- VIP member tracking
- Marketing automation

### 📱 **Mobile App** (`/mobile-app`)
- Flutter-based iOS/Android app
- AI fashion stylist chatbot
- Shopping with Shopify integration
- VIP wallet & rewards tracking
- Live event notifications
- Order history & tracking

### 🎥 **Live Shopping** (`/live-commerce`)
- Live video streaming events
- Real-time customer chat
- Product showcase with instant checkout
- AI moderator for customer questions
- Event recording & replay library

### ☁️ **Google Cloud Backend** (`/cloud`)
- Cloud Run deployment (AI API)
- Firestore database (customers, orders, analytics)
- Cloud Storage (images, videos)
- BigQuery (advanced analytics)
- Security & monitoring setup

---

## 🚀 Quick Start

### Prerequisites
- Node.js 20+
- Docker & Docker Compose
- Google Cloud account
- Shopify store access token
- Git

### Installation

```bash
git clone https://github.com/beberaygardon32-maker/Bebe-Ai-Fashion-.git
cd Bebe-Ai-Fashion-

cd ai-backend
npm install

cd ../admin-dashboard
npm install

cp ai-backend/.env.example ai-backend/.env
```

### Local Development

```bash
docker compose up --build

# Services:
# AI Backend: http://localhost:8080
# Admin Dashboard: http://localhost:3000
```

### Deploy to Google Cloud

```bash
gcloud auth login
gcloud config set project YOUR_PROJECT_ID
gcloud services enable run.googleapis.com firestore.googleapis.com storage.googleapis.com

cd ai-backend
gcloud run deploy bebe-ai-backend \
  --source . \
  --region us-central1 \
  --allow-unauthenticated
```

---

## 📁 Directory Structure

```
Bebe-Ai-Fashion-/
├── shopify-theme/          🛒 Shopify storefront
├── ai-backend/             🤖 Cloud AI services
├── admin-dashboard/        📊 Business dashboard
├── mobile-app/             📱 Flutter mobile app
├── live-commerce/          🎥 Live shopping events
├── cloud/                  ☁️ Google Cloud config
├── docs/                   📚 Documentation
├── docker-compose.yml      🐳 Local development
└── README.md
```

---

## ⚙️ Configuration

### Environment Variables (`.env`)

```env
PORT=8080
NODE_ENV=production
SHOPIFY_STORE=maestro-ai-qrc97.myshopify.com
SHOPIFY_ACCESS_TOKEN=your_token_here
GOOGLE_PROJECT_ID=your_project_id
FIREBASE_DATABASE=firestore
AI_SECRET_KEY=your_secret_key
ADMIN_EMAIL=admin@bebefashion.ai
```

---

## 🎨 Features

### Customer Experience
- ✅ Browse luxury fashion products
- ✅ Chat with AI fashion stylist
- ✅ Get personalized recommendations
- ✅ Shop while watching live events
- ✅ Earn & redeem rewards points
- ✅ VIP membership tiers
- ✅ Multi-language support

### Business Management
- ✅ Real-time sales dashboard
- ✅ Customer analytics
- ✅ AI conversation insights
- ✅ Inventory monitoring
- ✅ Automated rewards system
- ✅ Marketing automation
- ✅ Business forecasting

---

## 📊 API Endpoints

### AI Chat
```
POST /api/ai/chat
Body: { message: string, language?: string }
Response: { reply: string, assistant: string }
```

### Product Recommendations
```
POST /api/ai/recommend
Body: { preference: string, budget?: number }
Response: { products: array }
```

### Rewards
```
POST /api/rewards/add
Body: { purchase: number }
Response: { pointsEarned: number }
```

---

## 🚀 Deployment Checklist

- [ ] Repository created ✅
- [ ] Environment variables configured
- [ ] Shopify theme uploaded
- [ ] Google Cloud project setup
- [ ] Firebase/Firestore initialized
- [ ] AI backend deployed to Cloud Run
- [ ] Admin dashboard deployed
- [ ] Mobile app built & tested
- [ ] Live shopping configured
- [ ] Launch marketing campaign

---

## 📞 Support

- GitHub Issues: Report bugs
- Email: support@bebefashion.ai

---

**✨ Built with Shopify + Google Cloud + AI**

*Luxury fashion, powered by artificial intelligence*