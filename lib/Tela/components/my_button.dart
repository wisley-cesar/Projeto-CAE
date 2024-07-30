import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String nome;
  final Function onPressed;
  const MyButton({super.key, required this.nome, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed;
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      child: Text(
        nome,
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
