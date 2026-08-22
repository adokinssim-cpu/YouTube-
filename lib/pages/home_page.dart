import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/category_chips.dart';
import '../widgets/video_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CategoryChips(),
        Expanded(
          child: ListView.builder(
            itemCount: MockData.videos.length,
            itemBuilder: (context, index) {
              return VideoCard(video: MockData.videos[index]);
            },
          ),
        ),
      ],
    );
  }
}
