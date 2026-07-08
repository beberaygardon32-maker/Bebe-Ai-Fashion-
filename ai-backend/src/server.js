import express from 'express';
import cors from 'cors';
import dotenv from 'dotenv';

dotenv.config();

const app = express();
const PORT = process.env.PORT || 8080;

// Middleware
app.use(cors());
app.use(express.json());

// Health check
app.get('/', (req, res) => {
  res.json({
    status: 'online',
    name: 'Bebe AI Fashion Backend',
    version: '1.0.0'
  });
});

// AI Chat endpoint
app.post('/api/ai/chat', (req, res) => {
  const { message, language } = req.body;

  let reply = '✨ Welcome to Bebe AI Fashion! I can help you discover your perfect style.';

  if (message?.toLowerCase().includes('dress')) {
    reply = '👗 I can help you find elegant dresses and matching accessories!';
  }

  if (message?.toLowerCase().includes('size')) {
    reply = '📏 I can help you choose the perfect size based on your measurements.';
  }

  if (message?.toLowerCase().includes('gift')) {
    reply = '🎁 Let me help you find a beautiful fashion gift for someone special!';
  }

  res.json({
    reply,
    assistant: 'Bebe AI Stylist',
    language: language || 'en'
  });
});

// Product recommendations
app.post('/api/ai/recommend', (req, res) => {
  res.json({
    products: [
      'Luxury Evening Dress',
      'Diamond Accessories',
      'Designer Handbag',
      'Premium Shoes'
    ],
    message: '✨ Here are my recommendations for you!'
  });
});

// Rewards points
app.post('/api/rewards/add', (req, res) => {
  const { purchase } = req.body;
  const points = purchase * 10;

  res.json({
    pointsEarned: points,
    totalReward: Math.floor(points / 100),
    message: `🎉 You earned ${points} points!`
  });
});

// Analytics
app.post('/api/analytics/track', (req, res) => {
  const { event, data } = req.body;
  console.log(`Analytics Event: ${event}`, data);
  
  res.json({
    status: 'tracked',
    event
  });
});

// Start server
app.listen(PORT, () => {
  console.log(`\n✨ Bebe AI Fashion Backend Running on port ${PORT}`);
  console.log(`📋 Environment: ${process.env.NODE_ENV || 'development'}`);
  console.log(`🏪 Shopify Store: ${process.env.SHOPIFY_STORE || 'Not configured'}\n`);
});

export default app;