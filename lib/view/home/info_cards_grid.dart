import 'package:flutter/material.dart';
import '../models/info_card_model.dart';
import 'info_card.dart';

class InfoCardsGrid extends StatelessWidget {
  final List<InfoCardModel> cards;

  const InfoCardsGrid({required this.cards, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 1.2,
      children: cards.map((model) => InfoCard(model: model)).toList(),
    );
  }
}
