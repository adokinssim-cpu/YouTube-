import 'package:flutter/material.dart';
import 'package:youtube/widgets/AppBar_youtube.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarYoutube(),
      body: Center(
        child: Text('home page'),
      ),
    );
  }
}