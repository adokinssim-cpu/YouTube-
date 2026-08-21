import 'package:flutter/material.dart';
import '../models/video_model.dart';

class VideoCard extends StatelessWidget {
  final Video video;
  final VoidCallback ? onTap; 

  const VideoCard({
    super.key,
    required this.video,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child:Column(
        children: [
          //1. Miniature de la vidéo avec le badge de durée

          Stack(
            children: [
              Image.network(
                video.thumbnailUrl, 
                height: 220, 
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  padding: const 
                  EdgeInsets.symmetric(horizontal: 4, vertical: 2 
                ),
                decoration:BoxDecoration(
                  color: Colors.black.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(4), 
                ),
                child: Text(video.duration,
                style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
                ),
            
              ),
            ],
          ),

         // 2. Informations sous la vidéo (Avatar, Titre, Details)
         Padding(
          padding: const EdgeInsets.all(12.0), 
          child: Row(
            crossAxisAlignment: 
            CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 18, 
                backgroundImage: 
                NetworkImage(video.channelAvatarUrl),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      video.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                      
                      ),
                      const SizedBox(height: 4),
                      Text(
                        '${video.channelName} • ${video.views} • ${video.uploadTime}',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 12, 
                      ),
                      ),
                  ],
                ),
                ),

                IconButton(
                  icon: const Icon(Icons.more_vert,
                  color: Colors.white, size: 20), 
                  onPressed: () {},
                  ),
            ],
          ),
          
          )


        ]
      )
    );

  }
}

      
