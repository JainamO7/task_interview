import 'package:flutter/material.dart';

/// A custom page route that creates a slide transition from right to left.
/// This is commonly used for standard screen navigation on mobile platforms.
class SlideRightRoute extends PageRouteBuilder {
  final Widget page;

  SlideRightRoute({required this.page})
    : super(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          // The slide transition is controlled by an Offset and a Tween.
          const begin = Offset(1.0, 0.0); // Start from the right
          const end = Offset.zero; // End at the center
          const curve = Curves.ease;

          final tween = Tween(
            begin: begin,
            end: end,
          ).chain(CurveTween(curve: curve));
          final offsetAnimation = animation.drive(tween);

          return SlideTransition(position: offsetAnimation, child: child);
        },
      );
}
