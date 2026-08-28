import 'package:flutter/material.dart';
import 'package:youtube/widgets/AppBar_youtube.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarYoutube(),
      body: Center(
        child: Text('subscription page'),
      ),
    );
  }
}