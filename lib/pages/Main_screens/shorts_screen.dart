import 'package:flutter/material.dart';
import 'package:youtube/widgets/AppBar_youtube.dart';

class ShortsScreen extends StatelessWidget {
  const ShortsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppbarYoutube(),
      body: Center(
        child: Text('shorts page'),
      ),
    );
  }
}