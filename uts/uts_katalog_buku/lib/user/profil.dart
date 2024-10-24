import 'package:flutter/material.dart';
import 'dart:ui'; // Untuk efek blur
import '../login/login.dart'; // Pastikan mengimpor halaman login

class ProfilePage extends StatelessWidget {
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
                    'lib/assets/latarbelakang.jpg'), // Gambar latar belakang
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2), // Efek blur
              child: Container(
                color: Colors.black.withOpacity(0.5), // Overlay dengan opacity
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 16.0),
                      // Menggunakan gambar dari assets sebagai avatar
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(
                            'lib/assets/diri.jpg'), // Gambar profil dari assets
                        backgroundColor: Colors
                            .transparent, // Menghilangkan warna latar belakang
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Nurhidayah',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors
                              .white, // Warna teks putih agar kontras dengan latar belakang
                        ),
                      ),
                      const Text(
                        '2241760044',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      const Text(
                        'Pemrograman Mobile SIB-3E',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40.0),
                const Divider(color: Colors.white), // Divider warna putih
                ListTile(
                  leading: const Icon(Icons.logout,
                      color: Colors.white), // Ikon logout warna putih
                  title: const Text(
                    'Keluar',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  onTap: () {
                    // Aksi ketika "Keluar" ditekan
                    _showLogoutConfirmationDialog(
                        context); // Menampilkan dialog konfirmasi
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Fungsi untuk menampilkan dialog konfirmasi
  void _showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color.fromARGB(
              144, 13, 72, 161), // Warna latar biru sesuai gambar
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Apakah anda ingin keluar?',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop(); // Menutup dialog
                      _logout(
                          context); // Panggil fungsi logout jika "Ya" ditekan
                    },
                    child: const Text(
                      'Ya',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pop(); // Menutup dialog jika "Tidak" ditekan
                    },
                    child: const Text(
                      'Tidak',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  // Fungsi logout yang mengarahkan ke halaman login
  void _logout(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (Route<dynamic> route) => false, // Menghapus semua rute sebelumnya
    );
  }
}
