import 'package:flutter/material.dart';
import '../models/video_model.dart';

class VideoDetailPage extends StatelessWidget {
  final Video video;

  const VideoDetailPage({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Zone lecteur vidéo simulée avec bouton retour
            Stack(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image.network(
                    video.thumbnailUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: IconButton(
                    icon: const Icon(Icons.keyboard_arrow_down, color: Colors.white, size: 30),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
              ],
            ),

            // Contenu de la page sous la vidéo
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(12.0),
                children: [
                  Text(
                    video.title,
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    '${video.views} • ${video.uploadTime}',
                    style: TextStyle(color: Colors.grey[400], fontSize: 12),
                  ),
                  const SizedBox(height: 16),

                  // Actions rapides (J'aime, Partager...)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildActionButton(Icons.thumb_up_outlined, 'J\'aime'),
                      _buildActionButton(Icons.share_outlined, 'Partager'),
                      _buildActionButton(Icons.download_outlined, 'Télécharger'),
                      _buildActionButton(Icons.bookmark_outline, 'Enregistrer'),
                    ],
                  ),
                  const Divider(color: Colors.grey, height: 32),

                  // Barre d'informations de la chaîne
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(video.channelAvatarUrl),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          video.channelName,
                          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: const StadiumBorder(),
                        ),
                        child: const Text('S\'abonner'),
                      ),
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

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 20),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 11)),
      ],
    );
  }
}

