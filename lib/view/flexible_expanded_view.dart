import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flexible Expanded View'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
                height: 600,
                width: double.infinity,
                alignment: Alignment.center,
                child: const Center(
                  child: Text('Container 1'),
                ),
              ),
            ),
            // Expanded is flexFit.tight
            // flexible is flex
            Expanded(
              // Flexible(
              //   fit: FlexFit.tight,
              flex: 3,
              child: Container(
                color: Colors.blue,
                height: 200,
                width: double.infinity,
                alignment: Alignment.center,
                child: const Center(
                  child: Text('Flexible 1'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
