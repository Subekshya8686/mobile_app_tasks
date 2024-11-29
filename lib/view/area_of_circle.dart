import 'package:flutter/material.dart';
import 'dart:math'; // For π (pi)

class CircleAreaCalculator extends StatefulWidget {
  const CircleAreaCalculator({super.key});

  @override
  State<CircleAreaCalculator> createState() => _CircleAreaCalculatorState();
}

class _CircleAreaCalculatorState extends State<CircleAreaCalculator> {
  final TextEditingController _radiusController =
      TextEditingController(text: '7'); // Default radius

  String _result = '';

  void _calculateArea() {
    // Parse the input radius
    final double? radius = double.tryParse(_radiusController.text);

    if (radius != null) {
      // Formula: Area = π × r²
      final double area = pi * radius * radius;
      setState(() {
        _result = 'Area of the Circle: ${area.toStringAsFixed(2)} square units';
      });
    } else {
      setState(() {
        _result = 'Please enter a valid number';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Area Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _radiusController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Radius (r)', // Input field label
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _calculateArea,
              child: const Text('Calculate'),
            ),
            const SizedBox(height: 16),
            Text(
              _result,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
