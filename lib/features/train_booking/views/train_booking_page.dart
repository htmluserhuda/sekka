import 'package:flutter/material.dart';
import 'package:sekka/features/train_booking/models/train_option.dart';
import 'package:sekka/features/train_booking/views/bottom_navigation_bar.dart';


import 'package:sekka/features/train_booking/widgets/search_section.dart';

class TrainBookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E1E2C),
      appBar: AppBar(
        backgroundColor: Color(0xFF1E1E2C),
        elevation: 0,
        title: Row(
          children: [
            Image.asset('assets/images/lo.png', height: 36, width: 41),
            Text("Sekka Smart",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w100)),
          ],
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              "assets/images/profile.png",
              width: 36,
              height: 36,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchSection(),
            SizedBox(height: 16),
            Expanded(child: TrainOptionsList()),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
