import 'package:flutter/material.dart';
import 'package:youtube/models/download.dart';

class DownloadCard extends StatelessWidget {
  final DownloadedVideo downloadVideo;
  final VoidCallback ontap;

  const DownloadCard({
    super.key,
    required this.downloadVideo,
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        child: SizedBox(
        height: 120,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                downloadVideo.thumbnail,
                width: 180,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    downloadVideo.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    downloadVideo.channelName,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  const Spacer(),

                  const Row(
                    children: [
                      Icon(
                        Icons.download,
                        size: 18,
                      ),
                      SizedBox(width: 4),
                      Text('Downloaded'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}