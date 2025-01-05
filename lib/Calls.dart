import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Calls",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 50,
                color: Colors.green.shade600)),
      ),
    );
  }
}