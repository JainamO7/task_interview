class InfoCardModel {
  final String title;
  final String subtitle;
  final String image;
  final String? badge;

  InfoCardModel({
    required this.title,
    required this.subtitle,
    required this.image,
    this.badge,
  });

  factory InfoCardModel.fromJson(Map<String, dynamic> json) {
    return InfoCardModel(
      title: json['title'],
      subtitle: json['subtitle'],
      image: json['image'],
      badge: json['badge'],
    );
  }
}
