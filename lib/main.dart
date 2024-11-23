import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey, // Neutral color for the app theme
        scaffoldBackgroundColor: Colors.grey[100], // Light grey background color
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.grey[800]), // Set default text color
        ),
      ),
      home: const SignInPage(),
    );
  }
}

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent, // Make AppBar transparent
        automaticallyImplyLeading: false, // Remove the back button
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo and tagline
            const Text(
              'BUDGET LOFT',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'Times New Roman', // Adjust as needed
                color: Colors.black, // Dark color for title
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'idea of saving money with the idea of a lofty goal',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600], // Soft grey color for tagline
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            // Sign-In button
            ElevatedButton(
              onPressed: () {
                // Navigate to HomeScreen after successful sign-in
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                backgroundColor: Colors.grey[800], // Dark grey button background
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'SIGN IN',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // White text color
                ),
              ),
            ),
            const SizedBox(height: 30),
            // User ID (Email or Phone) input field
            TextField(
              decoration: InputDecoration(
                labelText: 'User ID (Email or Phone)',
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                labelStyle: TextStyle(color: Colors.grey[700]), // Soft grey label color
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            // Password input field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                labelStyle: TextStyle(color: Colors.grey[700]), // Soft grey label color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Colors.grey[400], // Slightly darker grey for app bar
        titleTextStyle: const TextStyle(color: Colors.black), // Adjust title color for contrast
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the buttons
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Start Learning Button
            ElevatedButton(
              onPressed: () {
                // Navigate to Start Learning Page (You can implement navigation later)
                if (kDebugMode) {
                  print('Start Learning Pressed');
                }
              },
              child: const Text('Start Learning', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 20), // Space between buttons
            // Expense Tracker Button
            ElevatedButton(
              onPressed: () {
                // Navigate to Expense Tracker Page (You can implement navigation later)
                if (kDebugMode) {
                  print('Expense Tracker Pressed');
                }
              },
              child: const Text('Expense Tracker', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}








