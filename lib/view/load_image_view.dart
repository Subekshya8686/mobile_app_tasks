import 'package:flutter/material.dart';

class LoadImageView extends StatelessWidget {
  const LoadImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: const Text('Load Image View'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          // width: MediaQuery.of(context).size.width * .5,
          child: Image.asset("assets/images/image1.jpg"),
        ),
        // child: Center(
        // child: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Image.asset('assets/images/image1.jpg'),
        //       Image.asset('assets/images/image2.jpg'),
        //     ],
        //   ),
        // ),
        // ),
      ),
    );
  }
}
