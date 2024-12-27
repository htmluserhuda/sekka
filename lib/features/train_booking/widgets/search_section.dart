import 'package:flutter/material.dart';
import 'package:sekka/features/train_booking/widgets/custom_textfield.dart';
import 'package:sekka/features/train_booking/widgets/handle_bar.dart';
import 'package:sekka/features/train_booking/widgets/time_picker.dart';
import 'package:sekka/features/train_booking/widgets/train_type_picker.dart';


class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF28293D),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          HandleBar(),
          SizedBox(height: 18),
          Row(
            children: [
              SizedBox(width: 8),
              Expanded(
                child: CustomTextField(
                  hintText: "Current location",
                  prefixIcon: IconButton(
                    icon: Image.asset("assets/images/Frame 7041.png"),
                    onPressed: () {},
                  ),
                  suffixIcon: Icon(Icons.close, color: Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 8),
              Expanded(
                child: CustomTextField(
                  hintText: "Where are you going?",
                  prefixIcon: IconButton(
                    icon: Image.asset("assets/images/Icons.png"),
                    onPressed: () {},
                  ),
                  suffixIcon: IconButton(
                    icon: Image.asset("assets/images/Switch.png"),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          TimeAndTypePicker(),
        ],
      ),
    );
  }
}

class TimeAndTypePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 3,
          child: TrainTimePicker(availableTimes: ["10:00", "20:00", "13:00"]),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.025),
        Expanded(
          flex: 4,
          child: TrainTypePicker(),
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.025),
        SettingsButton(),
      ],
    );
  }
}

class SettingsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.10,
      height: MediaQuery.of(context).size.width * 0.10,
      decoration: BoxDecoration(
        color: Color(0xFF75649F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: IconButton(
          icon: Image.asset("assets/images/Cog Wheel.png"),
          onPressed: () {},
        ),
      ),
    );
  }
}