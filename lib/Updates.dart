import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Updates",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 50,
                color: Colors.green.shade600)),
      ),
    );
  }
}
