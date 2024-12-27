import 'package:flutter/material.dart';

class TrainTimePicker extends StatefulWidget {
  final List<String> availableTimes; // List of train times

  TrainTimePicker({required this.availableTimes});

  @override
  _TrainTimePickerState createState() => _TrainTimePickerState();
}

class _TrainTimePickerState extends State<TrainTimePicker> {
  String? selectedTime; // The selected train time

  @override
  void initState() {
    super.initState();
    selectedTime = widget.availableTimes.first; // Default to the first time
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 7),
        decoration: BoxDecoration(
          color: Color(0xFF303144), // Dark background color
          borderRadius: BorderRadius.circular(15),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: selectedTime,
            dropdownColor: Color(0xFF1A1A2E), // Matches dark theme
            style: TextStyle(color: Colors.white, fontSize: 16),
            icon: IconButton(
              icon: ImageIcon(
                AssetImage("assets/images/Icons (3).png"),
                color: Color.fromARGB(255, 255, 255, 255),
                size: 24,
              ),
              onPressed: () {},
            ),
            onChanged: (String? newTime) {
              setState(() {
                selectedTime = newTime;
              });
            },
            items: widget.availableTimes
                .map<DropdownMenuItem<String>>((String time) {
              return DropdownMenuItem<String>(
                value: time,
                child: Text(time),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
