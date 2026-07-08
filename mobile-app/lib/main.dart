import 'package:flutter/material.dart';

void main() {
  runApp(const BebeFashionApp());
}

class BebeFashionApp extends StatelessWidget {
  const BebeFashionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bebe AI Fashion',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('✨ Bebe AI Fashion'),
        centerTitle: true,
        elevation: 0,
      ),
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: const [
          HomeTab(),
          ShopTab(),
          AiStylistTab(),
          VipTab(),
          RewardsTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.smart_toy),
            label: 'AI Stylist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.crown),
            label: 'VIP',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Rewards',
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '✨ Luxury Fashion Powered by AI 🤖',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Shop Now'),
          ),
        ],
      ),
    );
  }
}

class ShopTab extends StatelessWidget {
  const ShopTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.shopping_bag, size: 64),
          SizedBox(height: 20),
          Text('Browse Our Collection'),
        ],
      ),
    );
  }
}

class AiStylistTab extends StatefulWidget {
  const AiStylistTab({Key? key}) : super(key: key);

  @override
  State<AiStylistTab> createState() => _AiStylistTabState();
}

class _AiStylistTabState extends State<AiStylistTab> {
  final TextEditingController _controller = TextEditingController();
  String _response = '';

  void _askBebe() {
    setState(() {
      _response = '✨ I found some beautiful styles for you!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text('🤖 Ask Bebe AI Stylist'),
          const SizedBox(height: 20),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: 'Ask for fashion advice...',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: _askBebe,
            child: const Text('Ask'),
          ),
          const SizedBox(height: 20),
          if (_response.isNotEmpty)
            Text(
              _response,
              style: const TextStyle(fontSize: 18),
            ),
        ],
      ),
    );
  }
}

class VipTab extends StatelessWidget {
  const VipTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.crown, size: 64, color: Colors.amber),
          SizedBox(height: 20),
          Text('💎 VIP Membership'),
          SizedBox(height: 10),
          Text('Level: Gold'),
          Text('Points: 5,250'),
        ],
      ),
    );
  }
}

class RewardsTab extends StatelessWidget {
  const RewardsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.card_giftcard, size: 64),
          SizedBox(height: 20),
          Text('🎁 Rewards Wallet'),
          SizedBox(height: 10),
          Text('Balance: 5,250 points'),
        ],
      ),
    );
  }
}