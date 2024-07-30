import 'package:flutter/material.dart';

class BuildBottomAppBar extends StatelessWidget {
  const BuildBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: const Color(0xFF247B27),
      child: IconTheme(
        data: const IconThemeData(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(width: 15),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
              ),
              const SizedBox(width: 45),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.home),
              ),
              const SizedBox(width: 45),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.list),
              ),
              const SizedBox(width: 15),
            ],
          ),
        ),
      ),
    );
  }
}
