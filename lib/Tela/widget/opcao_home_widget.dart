import 'package:flutter/material.dart';

class OpcaoHomeWidget extends StatelessWidget {
  final Color color;
  final Function() onPressed;
  final String title;
  const OpcaoHomeWidget({
    super.key,
    required this.color,
    required this.onPressed,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
