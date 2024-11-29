import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  // TextEditingController
  final firstController = TextEditingController(text: '2');
  final secondController = TextEditingController(text: '3');
  int result = 0;

  final myKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Arithmetic View'),
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: myKey,
            child: Column(
              children: [
                TextFormField(
                  controller: firstController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter first number',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter first no';
                    }
                    return null;
                  },
                ),
                // Invisible Box
                const SizedBox(
                    height: 10), // to add space between the two text fields
                TextFormField(
                  controller: secondController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Enter second number',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter second no';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                    height: 10), // to add space between the two text fields

                Text(
                  'Result: $result',
                  style: const TextStyle(fontSize: 30),
                ),
                const SizedBox(
                    height:
                        10), // to add space between the text and the buttons

                SizedBox(
                    width: double
                        .infinity, // sets the button width to that of parent's width
                    child: ElevatedButton(
                        onPressed: () {
                          if (myKey.currentState!.validate()) {
                            setState(() {
                              result = int.parse(firstController.text) +
                                  int.parse(secondController.text);
                            });
                          }
                        },
                        child: const Text('Add'))),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          if (myKey.currentState!.validate()) {
                            setState(() {
                              result = int.parse(firstController.text) -
                                  int.parse(secondController.text);
                            });
                          }
                        },
                        child: const Text('Subtract'))),
              ],
            ),
          ),
        ));
  }
}
