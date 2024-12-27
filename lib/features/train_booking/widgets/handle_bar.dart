import 'package:flutter/material.dart';

class HandleBar extends StatelessWidget {
  const HandleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 50, // Length of the handle bar
        height: 5, // Thickness of the handle bar
        decoration: BoxDecoration(
          color: Colors.white, // Color of the handle bar
          borderRadius: BorderRadius.circular(10), // Rounded corners
        ),
      ),
    );
  }
}
