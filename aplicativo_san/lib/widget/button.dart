import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  final VoidCallback? onPressed;
  final String label;
  final double? width;
  final double? height;

  const ButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height = 50,
  });

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 0, 129, 194),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
          child: Text(
            widget.label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
