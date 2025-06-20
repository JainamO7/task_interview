// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:task_interview/utils/AppColors.dart';
// import 'package:task_interview/utils/AppImage.dart';

// class Finalpageview extends StatelessWidget {
//   Finalpageview({super.key});

//   List<Map<String, String>> details = [
//     {
//       'title': "Birthday party",
//       'subtitle': "Delivery Box",
//       'image': Appimage.birthdayImage,
//     },
//     {
//       'title': "Kitty party",
//       'subtitle': "Value Catering",
//       'image': Appimage.kittyImage,
//     },
//     {
//       'title': "Birthday party",
//       'subtitle': "Delivery Box",
//       'image': Appimage.birthdayImage2,
//     },
//     {
//       'title': "Birthday party",
//       'subtitle': "Delivery Box",
//       'image': Appimage.birthdayImage2,
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back_ios_new_rounded),
//         title: Text(
//           "Suggested Platters",
//           textAlign: TextAlign.start,
//           style: GoogleFonts.lexend(fontSize: 25),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Card(
//               margin: EdgeInsets.all(5),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Align(
//                     alignment: Alignment.centerRight,
//                     child: Image.asset(Appimage.rightSign),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Quotation generated ",
//                           textAlign: TextAlign.start,
//                           style: GoogleFonts.lexend(
//                             fontWeight: FontWeight.w500,
//                           ),
//                         ),
//                         Text(
//                           "We have curated a quotation for you",
//                           style: GoogleFonts.lexend(
//                             fontWeight: FontWeight.w200,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Card(
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: Image.asset(Appimage.product5),
//                     title: Text(
//                       "Abhi’s Birthday Platter",
//                       style: GoogleFonts.lexend(fontWeight: FontWeight.w400),
//                     ),
//                     subtitle: Row(
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               "View Menu",
//                               style: GoogleFonts.lexend(
//                                 fontWeight: FontWeight.w400,
//                                 color: AppColors.minitFontColor,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child: Icon(
//                                 Icons.arrow_forward_ios_rounded,
//                                 size: 15,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(right: 20, left: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         _DetailsOrderContainer(
//                           title: "Event",
//                           subTitle: "Birthday",
//                         ),
//                         _DetailsOrderContainer(
//                           title: "Guest count",
//                           subTitle: "120 (30 Veg)",
//                         ),
//                       ],
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(right: 45, left: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         _DetailsOrderContainer(
//                           title: "Date",
//                           subTitle: "05/06/2025",
//                         ),
//                         _DetailsOrderContainer(
//                           title: "Time",
//                           subTitle: "06:30PM",
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 leading: Image.asset(Appimage.docIcon),
//                 title: Text(
//                   "Price ₹30,000",
//                   style: GoogleFonts.lexend(fontWeight: FontWeight.w400),
//                 ),
//                 subtitle: SizedBox(
//                   width: Get.width / 1.5,
//                   child: Text(
//                     "Excluding delivery charges and taxes",
//                     overflow: TextOverflow.clip,
//                     style: GoogleFonts.lexend(
//                       fontWeight: FontWeight.w400,
//                       color: AppColors.minitFontColor,
//                     ),
//                   ),
//                 ),
//                 trailing: Icon(Icons.arrow_forward_ios_rounded, size: 15),
//               ),
//             ),
//             Card(
//               color: AppColors.tryCardColor,
//               elevation: 4,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: SizedBox(
//                 width: Get.width,
//                 child: Stack(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(16.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Text(
//                             "Try Before You Decide",
//                             textAlign: TextAlign.start,
//                             style: GoogleFonts.poppins(
//                               fontWeight: FontWeight.w700,
//                               color: AppColors.whiteColor,
//                               fontSize: 20,
//                             ),
//                           ),
//                           const SizedBox(height: 8),
//                           SizedBox(
//                             width: Get.width * 0.6,
//                             child: Text(
//                               "Flavour test before you finalise the booking.",
//                               overflow: TextOverflow.clip,
//                               style: GoogleFonts.poppins(
//                                 fontWeight: FontWeight.w300,
//                                 color: AppColors.whiteColor,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 16),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: AppColors.boxMinitColor,
//                               foregroundColor: AppColors.minitFontColor,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               padding: const EdgeInsets.symmetric(
//                                 horizontal: 16,
//                                 vertical: 8,
//                               ),
//                             ),
//                             child: Text(
//                               "Book now",
//                               style: GoogleFonts.lexend(
//                                 color: AppColors.minitFontColor,
//                                 fontSize: 14,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Positioned(
//                       right: 15,
//                       bottom: 25,
//                       child: Image.asset(
//                         Appimage.tryCardImage, // Use the platter image
//                         height: Get.height / 6,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Positioned(
//                       right: 16,
//                       bottom: 16,
//                       child: Image.asset(
//                         Appimage.product6,
//                         height: 120,
//                         width: 120,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Align(
//               alignment: AlignmentDirectional.topStart,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   "Experience our services",
//                   textAlign: TextAlign.start,
//                   style: GoogleFonts.lexend(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 152,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 shrinkWrap: true,
//                 itemCount: details.length,
//                 itemBuilder: (context, index) {
//                   return _servicesFunction(
//                     title: details[index]['title']!,
//                     subtitle: details[index]['subtitle']!,
//                     imageUrl: details[index]['image']!,
//                   );
//                 },
//               ),
//             ),

//             _buildExclusiveConsultationCard(),
//             Text(
//               "Hear from our customers",
//               textAlign: TextAlign.start,
//               style: GoogleFonts.lexend(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 20,
//               ),
//             ),

//             SizedBox(
//               height: 200,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 5,
//                 itemBuilder: (context, index) {
//                   return _custoreReview(
//                     imageUrl: Appimage.birthdayImage,
//                     name: "Abhinav C",
//                     subTitle: 'Delivery Box',
//                     rating: '5',
//                   );
//                 },
//               ),
//             ),

//             _buildExclusiveConsultationCard2(),

//             Card(
//               child: ListTile(
//                 title: Text(
//                   "Cancel",
//                   style: GoogleFonts.poppins(
//                     fontWeight: FontWeight.w500,
//                     color: Colors.red,
//                   ),
//                 ),
//                 trailing: Icon(Icons.arrow_forward_ios_rounded),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomSheet: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: AppColors.saveBotton,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: Text(
//                   "Save for later",
//                   style: GoogleFonts.poppins(
//                     color: AppColors.minitFontColor,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: AppColors.minitFontColor,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: Text(
//                   "Proceed",
//                   style: GoogleFonts.poppins(
//                     color: AppColors.whiteColor,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _custoreReview({
//     required String imageUrl,
//     required String name,
//     required String subTitle,
//     required String rating,
//   }) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
//       child: SizedBox(
//         height: 500,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                 top: 12,
//                 bottom: 5,
//                 left: 8,
//                 right: 8,
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Image.asset(
//                   imageUrl,
//                   height: 120,
//                   width: 150,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Text(
//                     name,
//                     style: GoogleFonts.lexend(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 16,
//                     ),
//                   ),
//                   SizedBox(width: Get.width / 10),

//                   Icon(Icons.star, color: Colors.yellow[700], size: 16),
//                   Text(
//                     rating,
//                     style: GoogleFonts.lexend(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 4),
//             Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: Text(
//                 subTitle,
//                 textAlign: TextAlign.start,
//                 style: GoogleFonts.lexend(
//                   fontWeight: FontWeight.w300,
//                   fontSize: 12,
//                   color: Colors.grey[600],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),

//       //   ],
//       // ),
//       // ),
//     );
//   }

//   Widget _DetailsOrderContainer({
//     required String title,
//     required String subTitle,
//   }) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(title, style: GoogleFonts.lexend(fontWeight: FontWeight.w400)),
//         Text(subTitle, style: GoogleFonts.lexend(fontWeight: FontWeight.w200)),
//       ],
//     );
//   }

//   Card _buildExclusiveConsultationCard2() {
//     return Card(
//       elevation: 4, // Slight elevation for a card effect
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//         // Blue dashed border as in image
//       ),
//       color: AppColors.shareCardColor,
//       margin: EdgeInsets.all(8),
//       child: SizedBox(
//         width: Get.width, // Full width of the screen
//         height: Get.height / 3.5, // Fixed height to match the design
//         child: Stack(
//           children: [
//             // Background content
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Exclusive consultation",
//                           style: GoogleFonts.lexend(
//                             fontWeight: FontWeight.w600,
//                             color: AppColors.whiteColor,
//                             fontSize: 15,
//                           ),
//                         ),

//                         const SizedBox(height: 8),
//                         Text(
//                           "Share the menu link with your fam or friends & decide",
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.w300,
//                             color: AppColors.whiteColor,
//                             fontSize: 12,
//                           ),
//                         ),
//                         const SizedBox(height: 16),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor:
//                                 AppColors.boxMinitColor, // Purple color
//                             foregroundColor:
//                                 AppColors.minitFontColor, // White text
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 16,
//                               vertical: 8,
//                             ),
//                           ),
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               Icon(Icons.share, color: AppColors.primaryColor),
//                               const SizedBox(width: 3),
//                               Text(
//                                 "Share",
//                                 style: GoogleFonts.lexend(
//                                   color: AppColors.backgroundColor,
//                                   fontSize: 14,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   // Expert image
//                   Image.asset(
//                     Appimage
//                         .expertImage, // Replace with actual expert image path
//                     height: Get.height / 4,
//                     width: 120,
//                     fit: BoxFit.cover,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Card _buildExclusiveConsultationCard() {
//     return Card(
//       elevation: 4, // Slight elevation for a card effect
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10),
//         // Blue dashed border as in image
//       ),
//       margin: EdgeInsets.all(8),
//       child: SizedBox(
//         width: Get.width, // Full width of the screen
//         height: Get.height / 4, // Fixed height to match the design
//         child: Stack(
//           children: [
//             // Background content
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: 8,
//                             vertical: 4,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.green.withOpacity(
//                               0.2,
//                             ), // Light green background
//                             borderRadius: BorderRadius.circular(5),
//                           ),
//                           child: Text(
//                             "Exclusive consultation",
//                             style: GoogleFonts.poppins(
//                               fontWeight: FontWeight.w400,
//                               color: Colors.green,
//                               fontSize: 12,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           "Customise with an expert on call",
//                           style: GoogleFonts.poppins(
//                             fontWeight: FontWeight.w500,
//                             color: Colors.black87,
//                             fontSize: 18,
//                           ),
//                         ),
//                         const SizedBox(height: 16),
//                         ElevatedButton(
//                           onPressed: () {},
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor:
//                                 AppColors.boxMinitColor, // Purple color
//                             foregroundColor:
//                                 AppColors.minitFontColor, // White text
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 16,
//                               vertical: 8,
//                             ),
//                           ),
//                           child: Text(
//                             "Book now",
//                             style: GoogleFonts.lexend(
//                               color: AppColors.minitFontColor,
//                               fontSize: 14,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   // Expert image
//                   Image.asset(
//                     Appimage
//                         .expertImage, // Replace with actual expert image path
//                     height: Get.height / 4,
//                     width: 120,
//                     fit: BoxFit.cover,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _servicesFunction({
//     required String title,
//     required String subtitle,
//     required String imageUrl,
//   }) {
//     return Container(
//       width: 150, // Fixed width for each service card
//       margin: const EdgeInsets.symmetric(horizontal: 8.0),
//       child: Stack(
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Image.asset(
//               imageUrl,
//               width: 120,
//               height: 152,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Positioned(
//             bottom: 8,
//             left: 8,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: GoogleFonts.lexend(
//                     fontWeight: FontWeight.w400,
//                     color: AppColors.whiteColor,
//                   ),
//                 ),
//                 Text(
//                   subtitle,
//                   style: GoogleFonts.lexend(
//                     fontWeight: FontWeight.w200,
//                     color: AppColors.whiteColor,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// void showTastingSessionBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     isScrollControlled: true,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
//     ),
//     builder: (context) {
//       return Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Container(height: 4, width: 40, color: Colors.grey[400]),
//             const SizedBox(height: 16),
//             Text(
//               "Tasting Session",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),

//             const SizedBox(height: 20),

//             // Toggle Buttons
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ChoiceChip(
//                   label: Text("Veg items"),
//                   selected: true,
//                   backgroundColor: Colors.grey[200],
//                   selectedColor: Colors.green[100],
//                 ),
//                 const SizedBox(width: 10),
//                 ChoiceChip(
//                   label: Text("Non Veg items"),
//                   selected: false,
//                   backgroundColor: Colors.grey[200],
//                   selectedColor: Colors.red[100],
//                 ),
//               ],
//             ),

//             const SizedBox(height: 20),

//             // Date Selector
//             SizedBox(
//               height: 60,
//               child: ListView.builder(
//                 itemCount: 6,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   final days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
//                   final dates = ["05", "06", "07", "08", "09", "10"];
//                   return Container(
//                     width: 50,
//                     margin: const EdgeInsets.symmetric(horizontal: 6),
//                     decoration: BoxDecoration(
//                       color: index == 0 ? Colors.purple : Colors.grey[200],
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           dates[index],
//                           style: TextStyle(
//                             color: index == 0 ? Colors.white : Colors.black,
//                           ),
//                         ),
//                         Text(
//                           days[index],
//                           style: TextStyle(
//                             fontSize: 12,
//                             color: index == 0 ? Colors.white : Colors.black54,
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Time Slots
//             Column(
//               children: [
//                 _timeSlotTile(
//                   icon: Icons.wb_sunny_outlined,
//                   timeRange: "Afternoon",
//                   time: "12-02PM",
//                   slotInfo: "4 slots left",
//                   isSelected: true,
//                 ),
//                 const SizedBox(height: 10),
//                 _timeSlotTile(
//                   icon: Icons.nightlight_round,
//                   timeRange: "Evening",
//                   time: "07-10PM",
//                   slotInfo: "4 slots left",
//                   isSelected: false,
//                 ),
//               ],
//             ),

//             const SizedBox(height: 20),

//             // Price Summary
//             Container(
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 border: Border.all(color: Colors.grey[300]!),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Column(
//                 children: [
//                   _priceRow("Sub total", "₹30,000", isBold: true),
//                   _priceRow("Plate price", "₹300"),
//                   _priceRow("No. of guests", "100"),
//                   const Divider(),
//                   _priceRow("Sub total", "₹30,000", isBold: true),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Next Button
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.purple,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   padding: const EdgeInsets.symmetric(vertical: 16),
//                 ),
//                 onPressed: () {
//                   showTastingSessionBottomSheet(context);
//                 },
//                 child: const Text("Next", style: TextStyle(fontSize: 16)),
//               ),
//             ),

//             const SizedBox(height: 20),
//           ],
//         ),
//       );
//     },
//   );
// }

// Widget _timeSlotTile({
//   required IconData icon,
//   required String timeRange,
//   required String time,
//   required String slotInfo,
//   required bool isSelected,
// }) {
//   return Container(
//     decoration: BoxDecoration(
//       color: isSelected ? Colors.purple[100] : Colors.grey[100],
//       borderRadius: BorderRadius.circular(10),
//       border: Border.all(
//         color: isSelected ? Colors.purple : Colors.grey[300]!,
//         width: 1.5,
//       ),
//     ),
//     child: ListTile(
//       leading: Icon(icon, color: Colors.purple),
//       title: Text("$timeRange\n$time"),
//       subtitle: Row(
//         children: [
//           Icon(Icons.circle, size: 8, color: Colors.green),
//           const SizedBox(width: 4),
//           Text(slotInfo, style: TextStyle(fontSize: 12)),
//         ],
//       ),
//     ),
//   );
// }

// Widget _priceRow(String label, String value, {bool isBold = false}) {
//   return Padding(
//     padding: const EdgeInsets.symmetric(vertical: 4.0),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           label,
//           style: TextStyle(
//             fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//           ),
//         ),
//         Text(
//           value,
//           style: TextStyle(
//             fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
//           ),
//         ),
//       ],
//     ),
//   );
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_interview/utils/AppColors.dart';
import 'package:task_interview/utils/AppImage.dart';

class Finalpageview extends StatelessWidget {
  Finalpageview({super.key});

  List<Map<String, String>> details = [
    {
      'title': "Birthday party",
      'subtitle': "Delivery Box",
      'image': Appimage.birthdayImage,
    },
    {
      'title': "Kitty party",
      'subtitle': "Value Catering",
      'image': Appimage.kittyImage,
    },
    {
      'title': "Birthday party",
      'subtitle': "Delivery Box",
      'image': Appimage.birthdayImage2,
    },
    {
      'title': "Birthday party",
      'subtitle': "Delivery Box",
      'image': Appimage.birthdayImage2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_rounded),
        title: Text(
          "Suggested Platters",
          textAlign: TextAlign.start,
          style: GoogleFonts.lexend(fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(Appimage.rightSign),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Quotation generated ",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.lexend(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "We have curated a quotation for you",
                          style: GoogleFonts.lexend(
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(Appimage.product5),
                    title: Text(
                      "Abhi’s Birthday Platter",
                      style: GoogleFonts.lexend(fontWeight: FontWeight.w400),
                    ),
                    subtitle: Row(
                      children: [
                        Row(
                          children: [
                            Text(
                              "View Menu",
                              style: GoogleFonts.lexend(
                                fontWeight: FontWeight.w400,
                                color: AppColors.minitFontColor,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _DetailsOrderContainer(
                          title: "Event",
                          subTitle: "Birthday",
                        ),
                        _DetailsOrderContainer(
                          title: "Guest count",
                          subTitle: "120 (30 Veg)",
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 45, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _DetailsOrderContainer(
                          title: "Date",
                          subTitle: "05/06/2025",
                        ),
                        _DetailsOrderContainer(
                          title: "Time",
                          subTitle: "06:30PM",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset(Appimage.docIcon),
                title: Text(
                  "Price ₹30,000",
                  style: GoogleFonts.lexend(fontWeight: FontWeight.w400),
                ),
                subtitle: SizedBox(
                  width: Get.width / 1.5,
                  child: Text(
                    "Excluding delivery charges and taxes",
                    overflow: TextOverflow.clip,
                    style: GoogleFonts.lexend(
                      fontWeight: FontWeight.w400,
                      color: AppColors.minitFontColor,
                    ),
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded, size: 15),
              ),
            ),
            Card(
              color: AppColors.tryCardColor,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: Get.width,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Try Before You Decide",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w700,
                              color: AppColors.whiteColor,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 8),
                          SizedBox(
                            width: Get.width * 0.6,
                            child: Text(
                              "Flavour test before you finalise the booking.",
                              overflow: TextOverflow.clip,
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w300,
                                color: AppColors.whiteColor,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            onPressed: () {
                              showTastingSessionBottomSheet(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.boxMinitColor,
                              foregroundColor: AppColors.minitFontColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                            ),
                            child: Text(
                              "Book now",
                              style: GoogleFonts.lexend(
                                color: AppColors.minitFontColor,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 15,
                      bottom: 25,
                      child: Image.asset(
                        Appimage.tryCardImage,
                        height: Get.height / 6,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 16,
                      bottom: 16,
                      child: Image.asset(
                        Appimage.product6,
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Experience our services",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 152,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: details.length,
                itemBuilder: (context, index) {
                  return _servicesFunction(
                    title: details[index]['title']!,
                    subtitle: details[index]['subtitle']!,
                    imageUrl: details[index]['image']!,
                  );
                },
              ),
            ),
            _buildExclusiveConsultationCard(),
            Text(
              "Hear from our customers",
              textAlign: TextAlign.start,
              style: GoogleFonts.lexend(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return _custoreReview(
                    imageUrl: Appimage.birthdayImage,
                    name: "Abhinav C",
                    subTitle: 'Delivery Box',
                    rating: '5',
                  );
                },
              ),
            ),
            _buildExclusiveConsultationCard2(),
            Card(
              child: ListTile(
                title: Text(
                  "Cancel",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.red,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.saveBotton,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Save for later",
                  style: GoogleFonts.poppins(
                    color: AppColors.minitFontColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  showTastingSessionBottomSheet(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.minitFontColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Proceed",
                  style: GoogleFonts.poppins(
                    color: AppColors.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _custoreReview({
    required String imageUrl,
    required String name,
    required String subTitle,
    required String rating,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: SizedBox(
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 12,
                bottom: 5,
                left: 8,
                right: 8,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imageUrl,
                  height: 120,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: GoogleFonts.lexend(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: Get.width / 10),
                  Icon(Icons.star, color: Colors.yellow[700], size: 16),
                  Text(
                    rating,
                    style: GoogleFonts.lexend(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                subTitle,
                textAlign: TextAlign.start,
                style: GoogleFonts.lexend(
                  fontWeight: FontWeight.w300,
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _DetailsOrderContainer({
    required String title,
    required String subTitle,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: GoogleFonts.lexend(fontWeight: FontWeight.w400)),
        Text(subTitle, style: GoogleFonts.lexend(fontWeight: FontWeight.w200)),
      ],
    );
  }

  Card _buildExclusiveConsultationCard2() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColors.shareCardColor,
      margin: EdgeInsets.all(8),
      child: SizedBox(
        width: Get.width,
        height: Get.height / 3.5,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Exclusive consultation",
                          style: GoogleFonts.lexend(
                            fontWeight: FontWeight.w600,
                            color: AppColors.whiteColor,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Share the menu link with your fam or friends & decide",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            color: AppColors.whiteColor,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.boxMinitColor,
                            foregroundColor: AppColors.minitFontColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.share, color: AppColors.primaryColor),
                              const SizedBox(width: 3),
                              Text(
                                "Share",
                                style: GoogleFonts.lexend(
                                  color: AppColors.backgroundColor,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    Appimage.expertImage,
                    height: Get.height / 4,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card _buildExclusiveConsultationCard() {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(8),
      child: SizedBox(
        width: Get.width,
        height: Get.height / 4,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Exclusive consultation",
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Colors.green,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Customise with an expert on call",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.boxMinitColor,
                            foregroundColor: AppColors.minitFontColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                          ),
                          child: Text(
                            "Book now",
                            style: GoogleFonts.lexend(
                              color: AppColors.minitFontColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    Appimage.expertImage,
                    height: Get.height / 4,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _servicesFunction({
    required String title,
    required String subtitle,
    required String imageUrl,
  }) {
    return Container(
      width: 150,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              imageUrl,
              width: 120,
              height: 152,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w400,
                    color: AppColors.whiteColor,
                  ),
                ),
                Text(
                  subtitle,
                  style: GoogleFonts.lexend(
                    fontWeight: FontWeight.w200,
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void showTastingSessionBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(height: 4, width: 40, color: Colors.grey[400]),
            const SizedBox(height: 16),
            Text(
              "Tasting Session",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            // Toggle Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ChoiceChip(
                  label: Text("Veg items"),
                  selected: true,
                  backgroundColor: Colors.grey[200],
                  selectedColor: Colors.green[100],
                ),
                const SizedBox(width: 10),
                ChoiceChip(
                  label: Text("Non Veg items"),
                  selected: false,
                  backgroundColor: Colors.grey[200],
                  selectedColor: Colors.red[100],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Date Selector
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
                  final dates = ["05", "06", "07", "08", "09", "10"];
                  return Container(
                    width: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 6),
                    decoration: BoxDecoration(
                      color: index == 0 ? Colors.purple : Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          dates[index],
                          style: TextStyle(
                            color: index == 0 ? Colors.white : Colors.black,
                          ),
                        ),
                        Text(
                          days[index],
                          style: TextStyle(
                            fontSize: 12,
                            color: index == 0 ? Colors.white : Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            // Time Slots
            Column(
              children: [
                _timeSlotTile(
                  icon: Icons.wb_sunny_outlined,
                  timeRange: "Afternoon",
                  time: "12-02PM",
                  slotInfo: "4 slots left",
                  isSelected: true,
                ),
                const SizedBox(height: 10),
                _timeSlotTile(
                  icon: Icons.nightlight_round,
                  timeRange: "Evening",
                  time: "07-10PM",
                  slotInfo: "4 slots left",
                  isSelected: false,
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Price Summary
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[300]!),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  _priceRow("Sub total", "₹30,000", isBold: true),
                  _priceRow("Plate price", "₹300"),
                  _priceRow("No. of guests", "100"),
                  const Divider(),
                  _priceRow("Sub total", "₹30,000", isBold: true),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Next Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  // Remove recursive call and add desired action
                  print("Next button pressed"); // Placeholder action
                  // Optionally navigate to another screen or close the sheet
                  // Navigator.pop(context); // Uncomment to close the sheet
                },
                child: const Text("Next", style: TextStyle(fontSize: 16)),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
    },
  );
}

Widget _timeSlotTile({
  required IconData icon,
  required String timeRange,
  required String time,
  required String slotInfo,
  required bool isSelected,
}) {
  return Container(
    decoration: BoxDecoration(
      color: isSelected ? Colors.purple[100] : Colors.grey[100],
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: isSelected ? Colors.purple : Colors.grey[300]!,
        width: 1.5,
      ),
    ),
    child: ListTile(
      leading: Icon(icon, color: Colors.purple),
      title: Text("$timeRange\n$time"),
      subtitle: Row(
        children: [
          Icon(Icons.circle, size: 8, color: Colors.green),
          const SizedBox(width: 4),
          Text(slotInfo, style: TextStyle(fontSize: 12)),
        ],
      ),
    ),
  );
}

Widget _priceRow(String label, String value, {bool isBold = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 4.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    ),
  );
}
