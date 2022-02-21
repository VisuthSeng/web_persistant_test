import 'package:flutter/material.dart';

class PersistentWidget extends StatelessWidget {
  const PersistentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          gradient: LinearGradient(
              colors: [Colors.yellow, Colors.redAccent],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              tileMode: TileMode.clamp)),
      child: const Center(
        child: Text(
          'KINGCOWN SIGN',
          style: TextStyle(
              fontSize: 16.0,
              color: Colors.white70,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
