import 'package:flutter/material.dart';
import 'package:youtube/models/video.dart';

class HistoryDetailPage extends StatelessWidget {
  final Video video;

  const HistoryDetailPage({
    super.key,
    required this.video,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Thumbnail
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                video.thumbnailUrl,
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

                  // Titre
                  Text(
                    video.title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Chaîne
                  Text(
                    video.channelName,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Informations
                  Row(
                    children: [
                      const Icon(
                        Icons.history,
                        size: 18,
                      ),

                      const SizedBox(width: 6),

                      const Text(
                        'From your watch history',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // Bouton Play
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // TODO: lancer la vidéo
                      },
                      icon: const Icon(Icons.play_arrow),
                      label: const Text('Play video'),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // Ajouter à regarder plus tard
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.watch_later_outlined),
                      label: const Text('Watch later'),
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