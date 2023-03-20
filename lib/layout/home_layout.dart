import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  static const String routeName = 'homelayout';
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Deeds'),
      ),
    );
  }
}
