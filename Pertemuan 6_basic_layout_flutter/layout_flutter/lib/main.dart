import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Title Section
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Goa Pinus Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    // Button Section
    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Text Section
    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Goa Pinus, Terletak di Batu, Malang, salah satu destinasi wisata alam yang menakjubkan. Tempat ini sangat memukau dengan keindahan pesona hutan pinusnya. Selanjutnya, pepohonan pinus yang menjulang tinggi mengelilingi goa, memberikan pengalaman yang menenangkan dan memikat. Goa Pinus menjadi salah satu destinasi wisata alam yang populer di Kota Batu, dan lokasi Goa Pinus ini cukup mudah dijangkau dari pusat Kota Batu.\n\n'
        'Nurhidayah/2241760044',
        softWrap: true,
        textAlign: TextAlign.justify, // Rata kiri kanan
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nurhidayah/2241760044',
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              'assets/gunung.jpeg', // Ganti dengan path gambar yang Anda inginkan
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  // Helper method for button section
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
