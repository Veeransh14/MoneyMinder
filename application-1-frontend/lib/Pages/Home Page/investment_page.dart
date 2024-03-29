import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Investment Options',
      theme: ThemeData(
        primaryColor: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: Colors.blueAccent),
      ),
      home: InvestmentOptionsPage(),
    );
  }
}

class InvestmentOptionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Investment Options'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.blueGrey[100],
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InvestmentOptionButton(
                  title: 'Mutual Funds',
                  description:
                      'Diversify your investments through mutual funds.',
                  iconData: Icons.attach_money,
                  backgroundColor: Colors.blue,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/mf');
                  },
                ),
                SizedBox(height: 16),
                InvestmentOptionButton(
                  title: 'Fixed Deposits',
                  description:
                      'Earn fixed returns with low-risk fixed deposits.',
                  iconData: Icons.account_balance,
                  backgroundColor: Colors.green,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/fd');
                  },
                ),
                SizedBox(height: 16),
                InvestmentOptionButton(
                  title: 'Stock Market',
                  description: 'Invest in stocks for potential high returns.',
                  iconData: Icons.trending_up,
                  backgroundColor: Colors.orange,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/stock');
                  },
                ),
                SizedBox(height: 16),
                InvestmentOptionButton(
                  title: 'Real Estate',
                  description:
                      'Explore real estate investments for long-term growth.',
                  iconData: Icons.home,
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/estate');
                  },
                ),
                SizedBox(height: 16),
                InvestmentOptionButton(
                  title: 'Gold Trade',
                  description:
                      'Invest in gold for stability and long-term value.',
                  iconData: Icons.monetization_on,
                  backgroundColor: Colors.amber,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/gold');
                  },
                ),
                SizedBox(height: 16),
                InvestmentOptionButton(
                  title: 'Bonds',
                  description: 'Invest in bonds for fixed income and low risk.',
                  iconData: Icons.timeline,
                  backgroundColor: Colors.cyan,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/bonds');
                  },
                ),
                SizedBox(height: 16),
                InvestmentOptionButton(
                  title: 'Crypto Market',
                  description:
                      'Explore the volatile but potentially rewarding crypto market.',
                  iconData: Icons.account_balance_wallet,
                  backgroundColor: Colors.deepOrange,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/crypto');
                  },
                ),
                SizedBox(height: 16),
                InvestmentOptionButton(
                  title: 'SIP',
                  description:
                      'Invest regularly with Systematic Investment Plan.',
                  iconData: Icons.schedule,
                  backgroundColor: Colors.teal,
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/sip');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InvestmentOptionButton extends StatelessWidget {
  final String title;
  final String description;
  final IconData iconData;
  final Color backgroundColor;
  final VoidCallback onPressed;

  InvestmentOptionButton({
    required this.title,
    required this.description,
    required this.iconData,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          padding: const EdgeInsets.all(16.0),
          primary: backgroundColor,
        ),
        onPressed: onPressed,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  iconData,
                  size: 30,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
