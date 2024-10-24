import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Import Google Fonts
import 'dart:ui'; // Untuk efek blur

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
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
              color:
                  Colors.black.withOpacity(0.5), // Overlay gelap dengan opacity
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height * 0.05),
                Text(
                  'Welcome to',
                  style: GoogleFonts.montserrat(
                    // Menggunakan font Lobster dari Google Fonts
                    textStyle: const TextStyle(
                      fontSize: 35,
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
                Text(
                  'Tere Liye Books Catalog',
                  style: GoogleFonts.montserrat(
                    // Menggunakan font Lobster dari Google Fonts
                    textStyle: const TextStyle(
                      fontSize: 23,
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
                SizedBox(height: height * 0.05),
                _buildBookCard(
                  title: 'Bumi',
                  rating: '4.5',
                  price: 'Rp 98.100',
                  description:
                      'Yang Telah Lama Pergi adalah novel karya Tere Liye yang bercerita tentang perjalanan Mas ud untuk membalaskan rasa sakit hati...',
                  imagePath: 'lib/assets/bumi.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
                _buildBookCard(
                  title: 'Bulan',
                  rating: '4.0',
                  price: 'Rp 94.500',
                  description:
                      'Buku Hujan karya Tere Liye bercerita tentang Lail, seorang perempuan yang menjadi yatim piatu setelah bencana alam...',
                  imagePath: 'lib/assets/bulan.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
                _buildBookCard(
                  title: 'Matahari',
                  rating: '4.0',
                  price: 'Rp 94.500',
                  description:
                      'Perjalanan mengisahkan tentang petualangan Bujang dalam ...',
                  imagePath: 'lib/assets/matahari.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
                _buildBookCard(
                  title: 'Ceros dan Batozar',
                  rating: '4.0',
                  price: 'Rp 94.500',
                  description:
                      'Perjalanan mengisahkan tentang petualangan Bujang dalam ...',
                  imagePath:
                      'lib/assets/cerosdanbatozar.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
                _buildBookCard(
                  title: 'Komet',
                  rating: '4.0',
                  price: 'Rp 94.500',
                  description:
                      'Perjalanan mengisahkan tentang petualangan Bujang dalam ...',
                  imagePath: 'lib/assets/komet.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
                _buildBookCard(
                  title: 'Komet Minor',
                  rating: '4.0',
                  price: 'Rp 94.500',
                  description:
                      'Perjalanan mengisahkan tentang petualangan Bujang dalam ...',
                  imagePath: 'lib/assets/kometminor.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
                _buildBookCard(
                  title: 'Selena',
                  rating: '4.0',
                  price: 'Rp 94.500',
                  description:
                      'Perjalanan mengisahkan tentang petualangan Bujang dalam ...',
                  imagePath: 'lib/assets/selena.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
                _buildBookCard(
                  title: 'Nebula',
                  rating: '4.0',
                  price: 'Rp 94.500',
                  description:
                      'Perjalanan mengisahkan tentang petualangan Bujang dalam ...',
                  imagePath: 'lib/assets/nebula.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
                _buildBookCard(
                  title: 'Lumpu',
                  rating: '4.0',
                  price: 'Rp 94.500',
                  description:
                      'Perjalanan mengisahkan tentang petualangan Bujang dalam ...',
                  imagePath: 'lib/assets/lumpu.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
                _buildBookCard(
                  title: 'Si Putih',
                  rating: '4.0',
                  price: 'Rp 94.500',
                  description:
                      'Perjalanan mengisahkan tentang petualangan Bujang dalam ...',
                  imagePath: 'lib/assets/siputih.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
                _buildBookCard(
                  title: 'Bibi Gill',
                  rating: '4.0',
                  price: 'Rp 94.500',
                  description:
                      'Perjalanan mengisahkan tentang petualangan Bujang dalam ...',
                  imagePath: 'lib/assets/bibigil.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
                _buildBookCard(
                  title: 'Sagaras',
                  rating: '4.0',
                  price: 'Rp 94.500',
                  description:
                      'Perjalanan mengisahkan tentang petualangan Bujang dalam ...',
                  imagePath: 'lib/assets/sagaras.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
                _buildBookCard(
                  title: 'Matahari Minor',
                  rating: '4.0',
                  price: 'Rp 94.500',
                  description:
                      'Perjalanan mengisahkan tentang petualangan Bujang dalam ...',
                  imagePath:
                      'lib/assets/matahariminor.jpg', // Path ke gambar buku
                  width: width,
                ),
                SizedBox(height: height * 0.02),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBookCard({
    required String title,
    required String rating,
    required String price,
    required String description,
    required String imagePath,
    required double width,
  }) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(
            0.9), // Menambahkan opacity agar teks lebih jelas di atas background
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar buku
          Container(
            width: width * 0.2, // Ukuran gambar buku
            height: width * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16),
          // Informasi buku
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Rating: $rating ($price)',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
