import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_interview/utils/AppColors.dart';
import 'package:task_interview/utils/AppImage.dart';
import 'package:task_interview/utils/responsive.dart';

class Homepageview extends StatelessWidget {
  const Homepageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            Appimage.locationIcon,
            height: Responsive.getResponsiveHeight(context, 10),
          ),
        ),
        backgroundColor: AppColors.cardColor,
        title: Row(
          children: [
            Text('Hyderabad', style: GoogleFonts.poppins(color: Colors.white)),
          ],
        ),
        actions: [],
      ),
      body: Center(child: Text('Home')),
    );
  }
}
