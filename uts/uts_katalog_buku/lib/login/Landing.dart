import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts
import 'login.dart'; // Import halaman login

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'lib/assets/latarbelakang.jpg'), // Path gambar dari assets
                fit: BoxFit.cover, // Membuat gambar memenuhi layar
              ),
            ),
          ),
          // Content
          Column(
            children: [
              // Spacer for pushing content to the middle and bottom
              const Spacer(),

              // Texts in the middle
              Center(
                child: Column(
                  children: [
                    Text(
                      'Katalog Buku',
                      style: GoogleFonts.lobster(
                        // Menggunakan font Lobster dari Google Fonts
                        textStyle: const TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Ubah warna teks menjadi putih
                          shadows: [
                            Shadow(
                              // Menambahkan bayangan pada teks
                              blurRadius: 40.0,
                              color: Colors.black,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Aplikasi: Katalog Buku',
                      style: GoogleFonts.roboto(
                        // Menggunakan font Roboto dari Google Fonts
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black, // Ubah warna teks menjadi putih
                          shadows: [
                            Shadow(
                              // Menambahkan bayangan pada teks
                              blurRadius: 20.0,
                              color: Colors.white,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Spacer to move button to the bottom
              const Spacer(),

              // Sign in button at the bottom
              Padding(
                padding: const EdgeInsets.only(
                    bottom:
                        30), // Add padding to create some space from the bottom edge
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol Sign In ditekan
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const LoginPage()), // Pindah ke halaman login
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 15),
                    backgroundColor: Colors.blue, // Warna tombol
                  ),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
