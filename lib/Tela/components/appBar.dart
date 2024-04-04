import 'package:flutter/material.dart';

class AppBarIF extends StatelessWidget {
  const AppBarIF({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
        backgroundColor: Colors.amberAccent,
      ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: Color.fromARGB(219, 36, 123, 39),
          child: IconTheme(
            data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.settings),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.list),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
