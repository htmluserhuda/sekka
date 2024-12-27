// import 'package:flutter/material.dart';

// class TrainCard extends StatelessWidget {
//   final String from;
//   final String to;
//   final String firstClassPrice;
//   final String secondClassPrice;

//   TrainCard({
//     required this.from,
//     required this.to,
//     required this.firstClassPrice,
//     required this.secondClassPrice,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 16, horizontal: 2),
//       padding: EdgeInsets.all(26),
//       decoration: BoxDecoration(
//         color: Color(0xFF2A2A3C),
//         borderRadius: BorderRadius.circular(25),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 FromToSection(from: from, to: to),
//                 PriceSection(
//                   firstClassPrice: firstClassPrice,
//                   secondClassPrice: secondClassPrice,
//                 ),
//               ],
//             ),
//           ),
//           ArrowButton(),
//         ],
//       ),
//     );
//   }
// }

// class FromToSection extends StatelessWidget {
//   final String from;
//   final String to;

//   FromToSection({required this.from, required this.to});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("From", style: TextStyle(color: Colors.white, fontSize: 8)),
//             SizedBox(height: 4),
//             Text(from, style: TextStyle(color: Colors.white, fontSize: 16)),
//           ],
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("To", style: TextStyle(color: Colors.white, fontSize: 8)),
//             SizedBox(height: 4),
//             Text(to, style: TextStyle(color: Colors.white, fontSize: 16)),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class PriceSection extends StatelessWidget {
//   final String firstClassPrice;
//   final String secondClassPrice;

//   PriceSection({required this.firstClassPrice, required this.secondClassPrice});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         PriceRow(label: "First Class Air-conditioned", price: firstClassPrice),
//         SizedBox(height: 8),
//         PriceRow(label: "Second Class Air-conditioned", price: secondClassPrice),
//       ],
//     );
//   }
// }

// class PriceRow extends StatelessWidget {
//   final String label;
//   final String price;

//   PriceRow({required this.label, required this.price});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Text(label, style: TextStyle(color: Colors.white, fontSize: 14)),
//         Spacer(),
//         Text(price, style: TextStyle(color: Colors.white, fontSize: 14)),
//       ],
//     );
//   }
// }

// class ArrowButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 40,
//       height: 40,
//       decoration: BoxDecoration(
//         color: Color(0xFF75649F),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: IconButton(
//         icon: Image.asset("assets/images/Arrow Right.png"),
//         onPressed: () {},
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class TrainCard extends StatelessWidget {
  final String from;
  final String to;
  final String firstClassPrice;
  final String secondClassPrice;

  const TrainCard({
    Key? key,
    required this.from,
    required this.to,
    required this.firstClassPrice,
    required this.secondClassPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 2),
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A3C), // Dark background
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: _buildDetailsSection()),
          _buildArrowButton(),
        ],
      ),
    );
  }

  Widget _buildDetailsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFromToRow(),
        const SizedBox(height: 16),
        _buildPricingSection(),
      ],
    );
  }

  Widget _buildFromToRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildLocationColumn("From", from, leftPadding: 80),
        _buildIconButtons(),
        _buildLocationColumn("To", to, rightPadding: 60),
      ],
    );
  }

  Widget _buildLocationColumn(String label, String value,
      {double leftPadding = 0, double rightPadding = 0}) {
    return Padding(
      padding:
          EdgeInsets.only(left: leftPadding, right: rightPadding, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 8),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButtons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildIconButton("assets/images/Frame 7054.png"),
        _buildIconButton("assets/images/Stop Dot.png"),
      ],
    );
  }

  Widget _buildIconButton(String assetPath) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      icon: Image.asset(assetPath, color: Colors.white),
      onPressed: () {
        // Handle button tap
      },
    );
  }

  Widget _buildPricingSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildPricingRow("First Class Air-conditioned", firstClassPrice,
              spacing: 40),
          const SizedBox(height: 8),
          _buildPricingRow("Second Class Air-conditioned", secondClassPrice,
              spacing: 30),
        ],
      ),
    );
  }

  Widget _buildPricingRow(String label, String price, {double spacing = 40}) {
    return Row(
      children: [
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 14)),
        SizedBox(width: spacing),
        Text(price, style: const TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }

  Widget _buildArrowButton() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: const Color(0xFF75649F), // Purple background
        borderRadius: BorderRadius.circular(12),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        icon: Image.asset("assets/images/Arrow Right.png", color: Colors.white),
        onPressed: () {
          // Handle arrow button tap
        },
      ),
    );
  }
}
