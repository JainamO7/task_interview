import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/AppColors.dart';
import '../models/info_card_model.dart';

class InfoCard extends StatelessWidget {
  final InfoCardModel model;

  const InfoCard({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.backgroundColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (model.badge != null)
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  model.badge!,
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 10),
                ),
              ),
            const SizedBox(height: 8),
            SvgPicture.asset(model.image, height: 40),
            const SizedBox(height: 8),
            Text(
              model.title,
              style: GoogleFonts.lexend(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              model.subtitle,
              style: GoogleFonts.poppins(fontSize: 12, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
