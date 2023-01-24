import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const Text('udgusad');
          },
          itemCount: 10,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('POLO'),
      ),
    );
  }
}
