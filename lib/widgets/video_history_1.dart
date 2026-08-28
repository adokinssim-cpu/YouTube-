import 'package:flutter/material.dart';
import 'package:youtube/models/video.dart';

class VideoHistoryCard1 extends StatelessWidget {
  final Video video;
  final VoidCallback ontap;
  const VideoHistoryCard1({super.key,required this.video,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: InkWell(
          onTap: ontap,
          child: Row(
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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
            
          ],
        ),
      )
      
    );
  }
}