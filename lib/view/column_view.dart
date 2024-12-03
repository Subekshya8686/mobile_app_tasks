import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column View'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        // width: double.infinity,
        color: Colors.yellow,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Click Me')),
              ElevatedButton(onPressed: () {}, child: const Text('Click Me')),
              ElevatedButton(onPressed: () {}, child: const Text('Click Me')),
              // const Spacer(), // space between the buttons
              // Icon(Icons.star, size: 50),
              // Icon(Icons.star, size: 50),
              // Icon(Icons.star, size: 50),
            ],
          ),
        ),
      ),
    );
  }
}
