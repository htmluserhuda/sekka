import 'package:flutter/material.dart';

class TrainTypePicker extends StatefulWidget {
  @override
  _TrainTypePickerState createState() => _TrainTypePickerState();
}

class _TrainTypePickerState extends State<TrainTypePicker> {
  String selectedTrain = "Train"; // Default selected type
  final List<Map<String, dynamic>> trainTypes = [
    {"image": "assets/images/Bus.png", "type": "Tram"},
    {"image": "assets/images/Icons (4).png", "type": "Train"},
    {"image": "assets/images/Icons (5).png", "type": "Subway"},
  ];

  @override
  Widget build(BuildContext context) {
    // Retrieve screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // Adjust sizes and paddings dynamically
    double containerHeight = screenHeight * 0.08; // 8% of screen height
    double iconSize = screenWidth * 0.07; // 8% of screen width
    double iconSpacing = screenWidth * 0.04; // 6% of screen width

    return Container(
      height: containerHeight + iconSize * 0.07, // Add space for the icons
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.05, // 5% of screen width
        vertical: screenHeight * 0.01, // 1% of screen height
      ),
      decoration: BoxDecoration(
        color: Color(0xFF303144), // Dark background
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Stacked Train Type Images
          SizedBox(
            width: screenWidth * 0.2, // 40% of screen width
            height: iconSize + 0.5, // Add vertical space for icons
            child: Stack(
              alignment: Alignment.centerLeft,
              children: trainTypes.asMap().entries.map((entry) {
                int index = entry.key;
                var train = entry.value;

                return Positioned(
                  left: index * iconSpacing, // Offset each icon horizontally
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedTrain = train['type'];
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(
                          screenWidth * 0.001), // Padding for icons
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF1A1528),
                      ),
                      child: Image.asset(
                        train['image'], // Use Image.asset for images
                        width: iconSize, // Adjust image size
                        height: iconSize, // Adjust image size
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          // Dropdown Arrow
          IconButton(
            icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
            onPressed: () {
              // Placeholder for dropdown logic
            },
          ),
        ],
      ),
    );
  }
}
