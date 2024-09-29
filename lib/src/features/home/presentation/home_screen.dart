import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const path = '/';
  static const name = 'homeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
      ),
    );
  }
}
