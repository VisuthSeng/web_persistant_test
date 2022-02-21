import 'package:flutter/material.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
            constraints: const BoxConstraints.expand(),
            color: Colors.red,
          )),
          Expanded(
            flex: 5,
            child: Container(
              constraints: const BoxConstraints.expand(),
              color: Colors.blue,
              child: const Image(
                image: AssetImage('assets/suth.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
