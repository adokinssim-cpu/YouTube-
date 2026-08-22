import 'package:flutter/material.dart';

class ShortsPage extends StatelessWidget {
  const ShortsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Stack(
          fit: StackFit.expand,
          children: [
            Container(
              color: Colors.primaries[index % Colors.primaries.length],
              child: Center(
                child: Text(
                  'Shorts Vidéo #${index + 1}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 16,
              bottom: 80,
              child: Column(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.thumb_up,
                      size: 32,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  const Text('J\'aime', style: TextStyle(fontSize: 12)),
                  const SizedBox(height: 16),
                  IconButton(
                    icon: const Icon(
                      Icons.comment,
                      size: 32,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  const Text('Commentaires', style: TextStyle(fontSize: 12)),
                  const SizedBox(height: 16),
                  IconButton(
                    icon: const Icon(
                      Icons.share,
                      size: 32,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  const Text('Partager', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
