import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Container View'),
          centerTitle: true,
          elevation: 0,
        ),
        body: SafeArea( // if appbar is not present then use SafeArea gives space at top
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.bottomRight,
            child: Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                ),
              ),
              child: const Text('I am a container'),
            ),
          ),
        ));
  }
}
