import { useEffect, useState } from 'react';
import '../styles/dashboard.css';

export default function Dashboard() {
  const [data, setData] = useState({
    revenue: 0,
    orders: 0,
    customers: 0,
    aiChats: 0
  });

  useEffect(() => {
    // Simulate API call
    setTimeout(() => {
      setData({
        revenue: 12540,
        orders: 324,
        customers: 2840,
        aiChats: 5230
      });
    }, 500);
  }, []);

  return (
    <div className="dashboard">
      <header className="dashboard-header">
        <h1>👑 Bebe AI Command Center</h1>
        <p>Luxury Fashion Platform Analytics</p>
      </header>

      <div className="dashboard-grid">
        <Card
          title="Revenue"
          value={`$${data.revenue.toLocaleString()}`}
          icon="💰"
          color="gold"
        />
        <Card
          title="Orders"
          value={data.orders.toLocaleString()}
          icon="🛒"
          color="blue"
        />
        <Card
          title="Customers"
          value={data.customers.toLocaleString()}
          icon="👥"
          color="pink"
        />
        <Card
          title="AI Chats"
          value={data.aiChats.toLocaleString()}
          icon="🤖"
          color="purple"
        />
      </div>

      <section className="dashboard-section">
        <h2>✨ Top Products</h2>
        <ul>
          <li>👗 Luxury Evening Dress - $350</li>
          <li>💎 Diamond Fashion Jewelry - $890</li>
          <li>👜 Designer Handbag - $650</li>
        </ul>
      </section>

      <section className="dashboard-section">
        <h2>📊 Recent Activity</h2>
        <p>VIP customer milestone reached!</p>
        <p>New collection featured in live shopping event</p>
      </section>
    </div>
  );
}

function Card({ title, value, icon, color }) {
  return (
    <div className={`card card-${color}`}>
      <div className="card-icon">{icon}</div>
      <h3>{title}</h3>
      <p className="card-value">{value}</p>
    </div>
  );
}