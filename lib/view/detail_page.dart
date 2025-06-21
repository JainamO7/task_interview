import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_interview/models/info_card_data.dart';

/// A simple detail page that displays more information about a selected item.
class DetailPage extends StatelessWidget {
  final InfoCardData cardData;

  const DetailPage({super.key, required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          cardData.title,
          style: GoogleFonts.lexend(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Details for:", style: GoogleFonts.poppins(fontSize: 20)),
            const SizedBox(height: 16),
            Text(
              cardData.title,
              style: GoogleFonts.lexend(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              cardData.subtitle,
              style: GoogleFonts.poppins(fontSize: 18, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
