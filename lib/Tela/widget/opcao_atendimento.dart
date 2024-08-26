import 'package:flutter/material.dart';

class OpcaoAtendimento extends StatelessWidget {
  final Function() onPressed;
  final String title;
  const OpcaoAtendimento(
      {super.key, required this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        SizedBox(
          height: 40,
          width: double.infinity,
          child: TextButton(
            onPressed: onPressed,
            child: Text(title),
          ),
        ),
      ],
    );
  }
}
