import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube/models/video.dart';

class VideoHistoryCard extends StatelessWidget {
  final Video video;
  const VideoHistoryCard({super.key,required this.video});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: GestureDetector(
          onTap: (){
            context.push('/history_page');
          },
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                video.thumbnailUrl,
                width: 180,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8,),
            Text(
              video.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

            Text(
              video.channelName,
              style: const TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        ),
      )
      
    );
  }
}