import 'package:flutter/material.dart';
import 'package:sekka/features/train_booking/widgets/train_card.dart';


class TrainOptionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TrainCard(
          from: "Cairo",
          to: "Alexandria",
          firstClassPrice: "145 EGP",
          secondClassPrice: "65 EGP",
        ),
        TrainCard(
          from: "Cairo",
          to: "Aswan",
          firstClassPrice: "182 EGP",
          secondClassPrice: "130 EGP",
        ),
        TrainCard(
          from: "Cairo",
          to: "Damitta",
          firstClassPrice: "100 EGP",
          secondClassPrice: "70 EGP",
        ),
      ],
    );
  }
}