#!/bin/bash

echo "🚀 Deploying Bebe AI Fashion Platform to Google Cloud..."

# Set project
echo "📋 Setting up Google Cloud project..."
gcloud config set project $GOOGLE_PROJECT_ID

# Enable services
echo "⚙️ Enabling required services..."
gcloud services enable \
  run.googleapis.com \
  firestore.googleapis.com \
  storage.googleapis.com \
  compute.googleapis.com

# Build and deploy AI backend
echo "🤖 Building AI backend Docker image..."
cd ai-backend
docker build -t gcr.io/$GOOGLE_PROJECT_ID/bebe-ai-backend .

echo "☁️ Pushing to Google Container Registry..."
docker push gcr.io/$GOOGLE_PROJECT_ID/bebe-ai-backend

echo "🚀 Deploying to Cloud Run..."
gcloud run deploy bebe-ai-backend \
  --image gcr.io/$GOOGLE_PROJECT_ID/bebe-ai-backend \
  --platform managed \
  --region us-central1 \
  --allow-unauthenticated \
  --set-env-vars SHOPIFY_STORE=$SHOPIFY_STORE,GOOGLE_PROJECT_ID=$GOOGLE_PROJECT_ID

echo "✨ Deployment complete!"
echo "📊 View your service at: https://console.cloud.google.com/run