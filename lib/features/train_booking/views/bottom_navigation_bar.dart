import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF262832),
      selectedItemColor: Colors.white,
      unselectedItemColor: const Color.fromRGBO(255, 255, 255, 0.541),
      items: [
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/home.png"),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/profile.png"),
          label: "Profile",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/Icons (6).png"),
          label: "Tickets",
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/Cog Wheel.png"),
          label: "Settings",
        ),
      ],
      onTap: (index) {
        // Handle the navigation to different screens based on selected index
      },
    );
  }
}