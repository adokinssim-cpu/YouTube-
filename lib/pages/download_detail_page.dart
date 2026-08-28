import 'package:flutter/material.dart';
import 'package:youtube/models/download.dart';

class DownloadDetailPage extends StatelessWidget {
  final DownloadedVideo video;

  const DownloadDetailPage({
    super.key,
    required this.video,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video'),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Thumbnail
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                video.thumbnail,
                width: double.infinity,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Title
                  Text(
                    video.title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Channel
                  Text(
                    video.channelName,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Duration
                  Text(
                    'Duration: ${video.duration.inMinutes}:${(video.duration.inSeconds % 60).toString().padLeft(2, '0')}',
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // Download date
                  Text(
                    'Downloaded: ${video.downloadedAt.day}/${video.downloadedAt.month}/${video.downloadedAt.year}',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Play button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Plus tard : lancer la vidéo
                      },
                      icon: const Icon(Icons.play_arrow),
                      label: const Text('Play video'),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Delete button
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {
                        // Plus tard : supprimer le téléchargement
                      },
                      icon: const Icon(Icons.delete_outline),
                      label: const Text('Remove download'),
                    ),
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