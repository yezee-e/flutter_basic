import 'package:flutter/material.dart';

class BusinessFieldScreen extends StatelessWidget {
  const BusinessFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('업무분야')),
      body: Center(child: Text('업무분야 화면')),
    );
  }
}
