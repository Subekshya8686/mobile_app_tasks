import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  final TextEditingController _principalController =
      TextEditingController(text: '1000'); // Default value for principal
  final TextEditingController _rateController =
      TextEditingController(text: '5'); // Default value for rate
  final TextEditingController _timeController =
      TextEditingController(text: '2'); // Default value for time

  String _result = '';

  void _calculateSimpleInterest() {
    final double? principal = double.tryParse(_principalController.text);
    final double? rate = double.tryParse(_rateController.text);
    final double? time = double.tryParse(_timeController.text);

    if (principal != null && rate != null && time != null) {
      final double interest = (principal * rate * time) / 100;
      setState(() {
        _result = 'Simple Interest: ₹${interest.toStringAsFixed(2)}';
      });
    } else {
      setState(() {
        _result = 'Please enter valid numbers';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _principalController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Principal Amount (₹)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _rateController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Rate of Interest (%)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _timeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Time (Years)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _calculateSimpleInterest,
                child: const Text('Calculate'),
              ),
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
