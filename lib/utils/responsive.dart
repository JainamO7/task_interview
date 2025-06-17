import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  static double getScreenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double getScreenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double getResponsiveWidth(BuildContext context, double percentage) =>
      getScreenWidth(context) * (percentage / 100);

  static double getResponsiveHeight(BuildContext context, double percentage) =>
      getScreenHeight(context) * (percentage / 100);

  static double getResponsiveFontSize(BuildContext context, double baseSize) {
    double screenWidth = getScreenWidth(context);
    if (screenWidth < 650) {
      return baseSize * 0.8; // Mobile
    } else if (screenWidth < 1100) {
      return baseSize * 0.9; // Tablet
    } else {
      return baseSize; // Desktop
    }
  }

  static EdgeInsets getResponsivePadding(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    if (screenWidth < 650) {
      return const EdgeInsets.all(16.0); // Mobile
    } else if (screenWidth < 1100) {
      return const EdgeInsets.all(24.0); // Tablet
    } else {
      return const EdgeInsets.all(32.0); // Desktop
    }
  }

  static double getResponsiveSpacing(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    if (screenWidth < 650) {
      return 8.0; // Mobile
    } else if (screenWidth < 1100) {
      return 16.0; // Tablet
    } else {
      return 24.0; // Desktop
    }
  }
}
