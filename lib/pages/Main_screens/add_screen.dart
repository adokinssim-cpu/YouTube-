import 'package:flutter/material.dart';
import 'package:youtube/widgets/AppBar_youtube.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarYoutube(),
      body: Center(
        child: Text('add page'),
      ),
    );
  }
}