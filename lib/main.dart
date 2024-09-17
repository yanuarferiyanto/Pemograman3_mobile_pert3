import 'package:flutter/material.dart';
import 'login.dart'; // Import file login.dart

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 220, 223, 30)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      routes: {
        '/login': (context) => const LoginPage(), // Tambahkan route untuk LoginPage
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Sign Up"), // Teks Sign Up rata tengah
        ),
        backgroundColor: Theme.of(context).primaryColor, // Menggunakan warna tema
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Form Username
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50), // Radius untuk username field
                ),
                hintText: 'Enter your username',
              ),
            ),
            const SizedBox(height: 30),

            // Form Email
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50), // Radius untuk email field
                ),
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 30),

            // Form Password
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50), // Radius untuk password field
                ),
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(height: 30),

            // Form Confirm Password
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50), // Radius untuk confirm password field
                ),
                hintText: 'Confirm your password',
              ),
            ),
            const SizedBox(height: 10),

            // Tanda centang dan teks
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (bool? value) {
                    // Logika untuk checkbox
                  },
                ),
                const Text('I agree to the terms and conditions'),
              ],
            ),
            const SizedBox(height: 30),

            // Tombol Sign Up
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Logika untuk submit form
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Sign Up form submitted!')),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50), // Radius pada tombol
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16), // Ukuran tombol
                  backgroundColor: const Color.fromARGB(255, 137, 139, 10), // Warna latar belakang tombol
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 20, // Ukuran teks tombol
                    color: Colors.white, // Warna teks tombol
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Teks Login
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/login'); // Navigasi ke halaman login
                },
                child: const Text(
                  'Already have an account? Login',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 5, 2, 1), // Warna teks login
                    decoration: TextDecoration.underline, // Garis bawah teks
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
