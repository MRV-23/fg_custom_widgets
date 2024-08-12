import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color colorHovered;
  final double borderRadius;
  final TextStyle? textStyle;
  final double fontSizeText;
  final Color colorText;
  final EdgeInsetsGeometry padding;
  final Color splashColor;
  final Color highlightColor;
  final double? width;
  final double? height;
  final BoxDecoration? decoration;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry marginButton;
  final ShapeBorder? customShape;
  final double elevation;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.blue,
    this.colorHovered = Colors.blue,
    this.borderRadius = 8.0,
    this.textStyle,
    this.fontSizeText = 16.0,
    this.padding = const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
    this.splashColor = Colors.white24,
    this.highlightColor = Colors.white10,
    this.width,
    this.height,
    this.decoration,
    this.alignment = Alignment.center,
    this.margin = EdgeInsets.zero,
    this.marginButton = EdgeInsets.zero,
    this.customShape,
    this.elevation = 0.0,
    this.colorText = Colors.white,
  });

  @override
  _CustomButtonState createState() => _CustomButtonState();
}
 
class _CustomButtonState extends State<CustomButton> {
  bool _isHovered = false;

  bool _isPressed = false;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
  }

  void _onTapCancel() {
    setState(() {
      _isPressed = false;
    });
  }

  void _onHover(bool hovering) {
    setState(() {
      _isHovered = hovering;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: widget.elevation,
      color: Colors.transparent,
      shape: widget.customShape ??
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
      child: InkWell(
        onTap: widget.onPressed,
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        splashColor: widget.splashColor,
        highlightColor: widget.highlightColor,
        hoverColor: widget.colorHovered,
        borderRadius: widget.customShape == null
            ? BorderRadius.circular(widget.borderRadius)
            : null,
        customBorder: widget.customShape,
        child: Container(
          width: widget.width,
          height: widget.height,
          padding: widget.padding,
          margin: widget.marginButton,
          alignment: widget.alignment,
          decoration: widget.decoration ??
              BoxDecoration(
                color: widget.color.withOpacity(_isPressed ? 0.5 : 1.0),
                borderRadius: BorderRadius.circular(widget.borderRadius),
              ),
          child: Text(
            widget.text,
            style: widget.textStyle?.copyWith(
                  color: widget.colorText,
                )
          ),
        ),
      ),
    );
  }
}