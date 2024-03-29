import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _signIn(BuildContext context) async {
    if (_usernameController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      // Your login logic here

      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: _usernameController.text.trim(),
            password: _passwordController.text.trim());
      } catch (e) {
        print(e.toString());
      }

      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // Show a pop-up message if either username or password is not entered
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Please enter both email and password.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK', style: TextStyle(color: Colors.red)),
              ),
            ],
          );
        },
      );
    }
  }

  void _navigateToSignUp(BuildContext context) {
    // Directly navigate to the sign-up page
    Navigator.pushReplacementNamed(context, '/signup');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0088FF), // Light Blue
              Color(0xFF004080), // Dark Blue
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Your App Logo and Name
              Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Column(
                  children: [
                    // Replace the image path with your asset image
                    Image.asset(
                      'assets/images/logo.png',
                      height: 220.0,
                      width: 150.0,
                      color: Colors.white,
                    ),
                    SizedBox(height: 16.0),
                    Text(
                      'MoneyMinder',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
              // Username TextField
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person, color: Colors.white),
                  labelText: 'Email',
                  hintText: 'Enter Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.3),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16.0),
              // Password TextField
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  labelText: 'Password',
                  hintText: 'Enter password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.3),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 24.0),
              // Login Button
              ElevatedButton(
                onPressed: () => _signIn(context),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Center(
                    child: Text(
                      'Login',
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0xFF004080)),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              // Don't have an account? Sign up
              TextButton(
                onPressed: () => _navigateToSignUp(context),
                child: Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(
//     MaterialApp(
//       home: LoginPage(),
//     ),
//   );
// }
