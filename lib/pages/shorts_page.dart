import 'package:flutter/material.dart';

class ShortsPage extends StatelessWidget {
  const ShortsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Stack(
            fit: StackFit.expand,
            children: [
              // Image de fond simulée
              Image.network(
                'https://picsum.photos/id/${index + 30}/1080/1920',
                fit: BoxFit.cover,
              ),

              // Superposition sombre pour la lisibilité
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black.withOpacity(0.4), Colors.transparent, Colors.black.withOpacity(0.8)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),

              // Actions latérales (Like, Commentaires, Partage)
              Positioned(
                right: 12,
                bottom: 80,
                child: Column(
                  children: [
                    _buildShortAction(Icons.thumb_up, '12 k'),
                    const SizedBox(height: 20),
                    _buildShortAction(Icons.thumb_down, 'Non j\'aime'),
                    const SizedBox(height: 20),
                    _buildShortAction(Icons.comment, '428'),
                    const SizedBox(height: 20),
                    _buildShortAction(Icons.share, 'Partager'),
                  ],
                ),
              ),

              // Titre et chaîne en bas à gauche
              Positioned(
                left: 12,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '@ChaineOfficielle',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Mon premier Short sur Flutter ! #shorts',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildShortAction(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }
}
