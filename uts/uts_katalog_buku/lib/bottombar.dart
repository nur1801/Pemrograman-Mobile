import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0), // Padding around the navbar
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(
              255, 47, 161, 255), // Background color sesuai gambar
        ),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home,
                isSelected: selectedIndex == 0, index: 0), // Home
            _buildNavItem(Icons.info_rounded,
                isSelected: selectedIndex == 1, index: 1), // About
            _buildNavItem(Icons.person,
                isSelected: selectedIndex == 2, index: 2), // Profile
          ],
        ),
      ),
    );
  }

  // Create a reusable nav item widget with animation
  Widget _buildNavItem(IconData icon,
      {required bool isSelected, required int index}) {
    return GestureDetector(
      onTap: () {
        onItemTapped(index); // Trigger the provided callback on tap
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected
              ? Colors.white
              : Colors.transparent, // Background color for selected icon
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.white.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 3), // Shadow for selected icon
                  ),
                ]
              : [],
        ),
        child: Icon(
          icon,
          size: isSelected ? 30 : 24, // Larger icon size when selected
          color: isSelected ? Colors.black : Colors.grey, // Color transition
        ),
      ),
    );
  }
}
