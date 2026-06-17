import 'package:flutter/material.dart';
import 'package:flutter_intership_tasks/Week%201%20Task/login_screen.dart';

class HomeScreen extends StatelessWidget {
  final String username;
  final String password;

  const HomeScreen({super.key, required this.username, required this.password});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Welcome Icon
            const Icon(Icons.person, size: 80, color: Colors.deepPurple),
            const SizedBox(height: 20),

            // Welcome Message
            Text(
              "Welcome $username!",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),

            const Text(
              "You have successfully logged in",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 40),

            // User Info Card
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // Email
                    ListTile(
                      leading: const Icon(
                        Icons.email,
                        color: Colors.deepPurple,
                      ),
                      title: const Text(
                        "Email",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      subtitle: Text(
                        username,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const Divider(),
                    // Password
                    ListTile(
                      leading: const Icon(Icons.lock, color: Colors.deepPurple),
                      title: const Text(
                        "Password",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      subtitle: Text(
                        '•' * password.length,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 40),

            // Logout Button
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("Logout", style: TextStyle(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
