import 'package:flutter/material.dart';
import 'dart:ui'; // Untuk efek blur

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // Background image with blur effect
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
                color: Colors.black.withOpacity(
                    0.5), // Overlay gelap dengan opacity lebih tinggi
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal:
                      20.0), // Menambah padding agar teks tidak terlalu rapat ke tepi
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height:
                          height * 0.1), // Memberikan jarak lebih besar di atas
                  Text(
                    'About',
                    style: TextStyle(
                      color: Colors
                          .white, // Mengubah warna teks menjadi putih agar kontras
                      fontSize:
                          36, // Meningkatkan ukuran font untuk lebih jelas
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  Text(
                    'Aplikasi ini menyediakan katalog buku yang lengkap, '
                    'memudahkan Anda dalam mencari dan melihat informasi detail buku. '
                    'Dengan antarmuka yang sederhana, pengguna dapat dengan mudah '
                    'menjelajahi berbagai macam buku, serta mendapatkan informasi '
                    'tentang buku terbaru.',
                    style: TextStyle(
                      color: Colors.white.withOpacity(
                          0.9), // Meningkatkan keterbacaan dengan opacity teks
                      fontSize: 18, // Meningkatkan ukuran teks
                    ),
                  ),
                  SizedBox(height: 20), // Memberikan jarak antar teks
                  Text(
                    'Versi Aplikasi: 1.0.0',
                    style: TextStyle(
                      color: Colors.white.withOpacity(
                          0.9), // Mengubah opacity agar lebih mudah dibaca
                      fontSize: 18, // Ukuran teks yang lebih besar
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Dikembangkan oleh: Nurhidayah',
                    style: TextStyle(
                      color: Colors.white
                          .withOpacity(0.9), // Sama dengan teks lainnya
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCertificationItem({
    required BuildContext context,
    required String title,
    required String subtitle,
    required String status,
    required double width,
  }) {
    return InkWell(
      child: Container(
        width: width,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white
              .withOpacity(0.8), // Menambahkan opacity agar teks lebih jelas
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Color(0xFF0D47A1),
            width: 5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                status,
                style: TextStyle(
                  color: status == 'SELESAI' ? Colors.green : Colors.orange,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
