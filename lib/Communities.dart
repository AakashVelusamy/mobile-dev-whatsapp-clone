import 'package:flutter/material.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Communities",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 50,
                color: Colors.green.shade600)),
      ),
    );
  }
}
