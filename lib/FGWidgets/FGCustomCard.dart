import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double width;
  final double height;
  final IconData icon;
  final String text;
  final VoidCallback onPressed;
  final Color? iconColor;
  final double? iconSize;
  final TextStyle? textStyle;
  final Color? cardColor;
  final Color? colorHovered;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final double borderRadius;

  const CustomCard({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
    this.width = 600,
    this.height = 400,
    this.iconColor,
    this.iconSize,
    this.textStyle,
    this.cardColor,
    this.colorHovered,
    this.elevation = 2.0,
    this.padding = const EdgeInsets.all(16.0),
    this.borderRadius = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200.0, // Asigna el ancho deseado
      height: 150.0, // Asigna la altura deseada
      child: Card(
        color: cardColor ?? Theme.of(context).cardColor,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(borderRadius),
          hoverColor: colorHovered, // Aquí se aplica el color cuando el mouse pasa por encima
          child: Padding(
            padding: padding!,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      icon,
                      color: iconColor ?? Theme.of(context).iconTheme.color,
                      size: iconSize ?? 24.0,
                    ),
                    const SizedBox(height: 8.0), // Corregido para ser vertical
                    Text(
                      text,
                      style: textStyle ?? Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
