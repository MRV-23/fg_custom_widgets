import 'package:flutter/material.dart';
import 'package:fragua_custom_widgets/FGWidgets/FGCustomCard.dart';

class CustomCardGrid extends StatelessWidget {
  final List<CustomCard> cards;

  const CustomCardGrid({super.key, required this.cards});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0), // Padding general de 20px
      child: GridView.builder(
        itemCount: cards.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columnas
          mainAxisSpacing: 20.0, // Espacio entre las filas
          crossAxisSpacing: 20.0, // Espacio entre las columnas
          childAspectRatio: 1.0, // Relación de aspecto para mantener la forma de los cards
        ),
        itemBuilder: (context, index) {
          return cards[index];
        },
      ),
    );
  }
}
