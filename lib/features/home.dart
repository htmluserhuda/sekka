// import 'package:flutter/material.dart';
// import 'package:sekka/views/widgets/custom_textfield.dart';
// import 'package:sekka/views/widgets/handle_bar.dart';
// import 'package:sekka/views/widgets/time_picker.dart';
// import 'package:sekka/views/widgets/train_type_picker.dart';

// class TrainBookingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF1E1E2C), // Dark background color
//       appBar: AppBar(
//         backgroundColor: Color(0xFF1E1E2C),
//         elevation: 0,
//         title: Row(
//           children: [
//             Image.asset('assets/images/lo.png', height: 36, width: 41),
//             Text("Sekka Smart",
//                 style: TextStyle(
//                     color: Colors.white,
//                     // fontFamily: "Poppins",
//                     fontWeight: FontWeight.w100)),
//           ],
//         ),
//         actions: [
//           IconButton(
//             icon: Image.asset(
//               "assets/images/profile.png",
//               width: 36,
//               height: 36,
//             ),
//             onPressed: () {},
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Search Section
//             Container(
//               decoration: BoxDecoration(
//                 color: Color(0xFF28293D),
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               padding: EdgeInsets.all(16),
//               child: Column(
//                 children: [
//                   HandleBar(),
//                   SizedBox(height: 18),
//                   Row(
//                     children: [
//                       SizedBox(width: 8),
//                       Expanded(
//                           child: CustomTextField(
//                         hintText: "Current location",
//                         prefixIcon: IconButton(
//                           icon: Image.asset(
//                             "assets/images/Frame 7041.png",
//                             width: 24,
//                             height: 24,
//                             color: Colors.white,
//                           ),
//                           onPressed: () {},
//                         ),
//                         suffixIcon: Icon(Icons.close, color: Colors.grey),
//                       )),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Row(
//                     children: [
//                       SizedBox(width: 8),
//                       Expanded(
//                           child: CustomTextField(
//                         hintText: "Where are you going?",
//                         prefixIcon: IconButton(
//                           icon: Image.asset(
//                             "assets/images/Icons.png",
//                             width: 24,
//                             height: 24,
//                             color: Colors.white,
//                           ),
//                           onPressed: () {},
//                         ),
//                         suffixIcon: IconButton(
//                           icon: Image.asset(
//                             "assets/images/Switch.png",
//                             width: 24,
//                             height: 24,
//                             color: Colors.grey,
//                           ),
//                           onPressed: () {},
//                         ),
//                       )),
//                     ],
                  
//                   ),
//                   SizedBox(height: 16),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       // Train Time Picker
//                       Expanded(
//                         flex: 3, // Proportion of space for TrainTimePicker
//                         child: TrainTimePicker(
//                           availableTimes: ["10:00", "20:00", "13:00"],
//                         ),
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width *
//                             0.025, // 2% spacing
//                       ),
//                       // Train Type Picker
//                       Expanded(
//                         flex: 4, // Proportion of space for TrainTypePicker
//                         child: TrainTypePicker(),
//                       ),
//                       SizedBox(
//                         width: MediaQuery.of(context).size.width *
//                             0.025, // 2% spacing
//                       ),
//                       // Settings Icon
//                       Container(
//                         width: MediaQuery.of(context).size.width *
//                             0.10, // 12% of screen width
//                         height: MediaQuery.of(context).size.width *
//                             0.10, // Match width for square
//                         decoration: BoxDecoration(
//                           color: Color(0xFF75649F), // Purple background
//                           borderRadius:
//                               BorderRadius.circular(20), // Rounded borders
//                         ),
//                         child: Center(
//                           child: IconButton(
//                             icon: Image.asset(
//                               "assets/images/Cog Wheel.png",
//                               width: MediaQuery.of(context).size.width *
//                                   0.5, // Responsive icon size
//                               height: MediaQuery.of(context).size.width * 0.5,
//                               color: Colors.white,
//                             ),
//                             onPressed: () {
//                               // Handle settings button tap
//                             },
//                           ),
//                         ),
//                       ),
//                     ],
//                   )

//                 ],
//               ),
//             ),
//             SizedBox(height: 16),
//             // Train Options Section
//             Expanded(
//               child: ListView(
//                 children: [
//                   buildTrainCard(
//                     "Cairo",
//                     "Alexandria",
//                     firstClassPrice: "145 EGP",
//                     secondClassPrice: "65 EGP",
//                   ),
//                   buildTrainCard(
//                     "Cairo",
//                     "Aswan",
//                     firstClassPrice: "182 EGP",
//                     secondClassPrice: "130 EGP",
//                   ),
//                   buildTrainCard(
//                     "Cairo",
//                     "Damitta",
//                     firstClassPrice: "100 EGP",
//                     secondClassPrice: "70 EGP",
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Color(0xFF262832),
//         selectedItemColor: Colors.white,
//         unselectedItemColor: const Color.fromRGBO(255, 255, 255, 0.541),
//         items: [
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               "assets/images/home.png",
//               color: Colors.white,
//             ),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               "assets/images/profile.png",
//             ),
//             label: "Profile",
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               "assets/images/Icons (6).png",
//               color: Colors.white,
//             ),
//             label: "Tickets",
//           ),
//           BottomNavigationBarItem(
//             icon: Image.asset(
//               "assets/images/Cog Wheel.png",
//               color: Colors.white,
//             ),
//             label: "Settings",
//           ),
//         ],
//         onTap: (index) {
//           // Handle the navigation to different screens based on selected index
//         },
//       ),
//     );
//   }

//   Widget buildTrainCard(String from, String to,
//       {required String firstClassPrice, required String secondClassPrice}) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 16, horizontal: 2),
//       padding: EdgeInsets.all(26),
//       decoration: BoxDecoration(
//         color: Color(0xFF2A2A3C), // Dark background
//         borderRadius: BorderRadius.circular(25),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Left Side: From and To details
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 80.0, bottom: 24),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 8),
//                             child: Text(
//                               "From",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 8,
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 4),
//                           Text(
//                             from,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               // fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Row(
//                       mainAxisSize: MainAxisSize
//                           .min, // Minimizes the space along the row axis
//                       children: [
//                         IconButton(
//                           padding: EdgeInsets.zero, // Removes internal padding
//                           constraints:
//                               BoxConstraints(), // Removes default constraints
//                           icon: Image.asset(
//                             "assets/images/Frame 7054.png",
//                             color: Colors.white,
//                           ),
//                           onPressed: () {
//                             // Handle settings button tap
//                           },
//                         ),
//                         IconButton(
//                           padding: EdgeInsets.zero, // Removes internal padding
//                           constraints:
//                               BoxConstraints(), // Removes default constraints
//                           icon: Image.asset(
//                             "assets/images/Stop Dot.png",
//                             color: Colors.white,
//                           ),
//                           onPressed: () {
//                             // Handle settings button tap
//                           },
//                         ),
//                       ],
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 60, bottom: 24),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 20.0),
//                             child: Text(
//                               "To",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 8,
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: 4),
//                           Text(
//                             to,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               // fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 30.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 18.0),
//                         child: Row(
//                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "First Class Air-conditioned",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 14,
//                               ),
//                             ),
//                             SizedBox(width: 40),
//                             Text(
//                               firstClassPrice,
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 14,
//                                 // fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 8),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 14.0),
//                         child: Row(
//                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Second Class Air-conditioned",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 14,
//                               ),
//                             ),
//                             SizedBox(width: 30),
//                             Text(
//                               secondClassPrice,
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 14,
//                                 // fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           // Right Side: Arrow Button
//           Container(
//             width: 40,
//             height: 40,
//             decoration: BoxDecoration(
//               color: Color(0xFF75649F), // Purple background
//               borderRadius: BorderRadius.circular(12), // Circular shape
//             ),
//             child: IconButton(
//               padding: EdgeInsets.zero, // Removes internal padding
//               constraints: BoxConstraints(), // Removes default constraints
//               icon: Image.asset(
//                 "assets/images/Arrow Right.png",
//                 color: Colors.white,
//               ),
//               onPressed: () {
//                 // Handle settings button tap
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
