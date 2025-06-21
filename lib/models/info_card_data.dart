import 'package:flutter/foundation.dart';

/// This model class defines the data structure for a card.
/// Making it public allows it to be used across different files, such as the
/// home page and the detail page.
class InfoCardData {
  final String title;
  final String subtitle;
  final String image;
  final String? badge;

  // A unique ID to help with animations and state tracking.
  final String id;

  InfoCardData({
    required this.title,
    required this.subtitle,
    required this.image,
    this.badge,
  }) : id = UniqueKey().toString(); // Auto-generate a unique ID.
}
