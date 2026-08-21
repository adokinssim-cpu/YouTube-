import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/category_chips.dart';
import '../widgets/video_card.dart';
import 'video_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          CategoryChips(categories: mockCategories),
          Expanded(
            child: ListView.builder(
              itemCount: mockVideos.length,
              itemBuilder: (context, index) {
                final video = mockVideos[index];
                return VideoCard(
                  video: video,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => VideoDetailPage(video: video),
                        ),                 
                      );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
    
  }
} 