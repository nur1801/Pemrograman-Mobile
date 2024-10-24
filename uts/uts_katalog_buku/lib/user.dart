import 'package:flutter/material.dart';
import 'bottombar.dart'; // Pastikan sudah benar
import 'user/dashboard.dart'; // Import file dashboard.dart (Dashboard)
import 'user/about.dart'; // Import file riwayat.dart (AssignmentPage)
import 'user/profil.dart'; // Import file profil.dart (ProfilePage)

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Dashboard(), // Nama kelas Dashboard sudah sesuai dengan kelas di dashboard.dart
    AboutPage(), // Pastikan nama ini benar di riwayat.dart
    ProfilePage(), // Pastikan nama ini benar di profil.dart
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Update halaman aktif
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        body: SafeArea(
          child: _pages[_selectedIndex], // Menampilkan halaman yang dipilih
        ),
        bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped, // Pass the callback function
        ),
      ),
    );
  }
}
