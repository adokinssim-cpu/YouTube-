import 'package:flutter/material.dart';
import 'package:youtube/models/playlist.dart';

class PlaylistCard extends StatelessWidget {
  final Playlist playlist;
  final VoidCallback onTap;

  const PlaylistCard({
    super.key,
    required this.onTap,
    required this.playlist,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),

      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 4,
        ),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

           
            // THUMBNAIL
           
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                children: [

                  Image.asset(
                    playlist.thumbnaiUrl,
                    width: 180,
                    height: 105,
                    fit: BoxFit.cover,
                  ),

                  // Nombre de vidéos
                  Positioned(
                    bottom: 6,
                    right: 6,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: 0.8),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        '${playlist.videoCount} videos',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 12),

      
            // INFORMATIONS
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Titre + menu
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Expanded(
                        child: Text(
                          playlist.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.more_vert,
                          size: 22,
                        ),
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  // Visibilité
                  Row(
                    children: [
                      Icon(
                        playlist.isPrivate
                            ? Icons.lock_outline
                            : Icons.public,
                        size: 15,
                        color: Colors.grey.shade600,
                      ),

                      const SizedBox(width: 5),

                      Text(
                        playlist.isPrivate
                            ? 'Private'
                            : 'Public',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  // Description
                  if (playlist.description.isNotEmpty)
                    Text(
                      playlist.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                    ),

                  const SizedBox(height: 8),

                  // Voir la playlist
                  const Text(
                    'View playlist',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
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