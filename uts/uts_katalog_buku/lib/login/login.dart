import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts
import '../user.dart'; // Impor halaman user
import 'Landing.dart'; // Impor halaman landing page
import 'dart:ui';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image with opacity and blur effect
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                    'lib/assets/latarbelakang.jpg'), // Path gambar dari assets
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2), // Blur background
              child: Container(
                color: Colors.black.withOpacity(0.3), // Overlay dengan opacity
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(
                    20.0), // Menambahkan padding di sekeliling
                children: [
                  const LoginForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // Controller untuk input username dan password
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Variable untuk mengontrol tampilan password
  bool _obscureText = true;

  // Variable untuk menampilkan error message
  bool _isLoginFailed = false;

  // Fungsi untuk melakukan login
  void _login(BuildContext context) {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Cek apakah username dan password sesuai
    if (username == 'Nurhidayah' && password == '123') {
      // Reset state login gagal dan navigasi ke halaman user
      setState(() {
        _isLoginFailed = false;
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const UserPage()),
      );
    } else {
      // Jika tidak sesuai, tampilkan pesan error
      setState(() {
        _isLoginFailed = true;
      });
    }
  }

  // Fungsi untuk toggle password visibility
  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText; // Mengubah state _obscureText
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // InkWell untuk teks yang bisa ditekan
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const LandingPage()), // Navigasi ke halaman landing page
            );
          },
          child: Text(
            'Login',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: screenHeight * 0.03),
        Container(
          width: screenWidth * 0.85,
          padding: const EdgeInsets.all(20.0),
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.7), // Membuat form transparan
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Login Details',
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    hintText: 'Username',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: _obscureText, // Mengontrol tampilan password
                  decoration: InputDecoration(
                    hintText: 'Password',
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText
                            ? Icons.visibility
                            : Icons.visibility_off, // Ikon sesuai state
                      ),
                      onPressed:
                          _togglePasswordVisibility, // Memanggil fungsi untuk toggle
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Menampilkan error jika login gagal
              Visibility(
                visible: _isLoginFailed,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.error, color: Colors.red),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Login gagal. Username atau password salah.',
                          style: GoogleFonts.poppins(
                            color: Colors.red,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0D47A1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(100, 50),
                ),
                onPressed: () {
                  _login(context);
                },
                child: Text(
                  'Login',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
