import 'package:flutter/material.dart';
import 'package:youtube/models/playlist.dart';

class PlaylistRepository {

  Future<List<Playlist>> getPlaylists() async {

    // Simulation d'un appel réseau de 0 seconde
    await Future.delayed(Duration.zero);

    return [
      Playlist(
        id: 'playlist_001',
        title: 'Flutter Development',
        description: 'Learn Flutter and build beautiful mobile applications.',
        thumbnaiUrl: 'assets/images/test.png',
        videoCount: 24,
        isPrivate: false,
      ),

      Playlist(
        id: 'playlist_002',
        title: 'Dart Programming',
        description: 'Complete Dart programming tutorials for beginners.',
        thumbnaiUrl: 'assets/images/test.png',
        videoCount: 18,
        isPrivate: true,
      ),

      Playlist(
        id: 'playlist_003',
        title: 'Clean Architecture',
        description: 'Learn how to structure your Flutter applications.',
        thumbnaiUrl: 'assets/images/test.png',
        videoCount: 12,
        isPrivate: false,
      ),

      Playlist(
        id: 'playlist_004',
        title: 'Flutter State Management',
        description: 'Provider, Riverpod and other state management solutions.',
        thumbnaiUrl: 'assets/images/test.png',
        videoCount: 15,
        isPrivate: true,
      ),

      Playlist(
        id: 'playlist_005',
        title: 'Backend Development',
        description: 'Learn how to build REST APIs and backend applications.',
        thumbnaiUrl: 'assets/images/test.png',
        videoCount: 30,
        isPrivate: false,
      ),

      Playlist(
        id: 'playlist_006',
        title: 'Spring Boot',
        description: 'Build powerful backend applications with Spring Boot.',
        thumbnaiUrl: 'assets/images/test.png',
        videoCount: 27,
        isPrivate: false,
      ),

      Playlist(
        id: 'playlist_007',
        title: 'Cybersecurity Fundamentals',
        description: 'Introduction to networking, security and ethical hacking.',
        thumbnaiUrl: 'assets/images/test.png',
        videoCount: 21,
        isPrivate: true,
      ),

      Playlist(
        id: 'playlist_008',
        title: 'Cloud Computing',
        description: 'Discover AWS, Azure, cloud architecture and DevOps.',
        thumbnaiUrl: 'assets/images/test.png',
        videoCount: 16,
        isPrivate: false,
      ),

      Playlist(
        id: 'playlist_009',
        title: 'Git and GitHub',
        description: 'Master Git, GitHub and collaborative development.',
        thumbnaiUrl: 'assets/images/test.png',
        videoCount: 10,
        isPrivate: false,
      ),

      Playlist(
        id: 'playlist_010',
        title: 'Software Engineering',
        description: 'Software design patterns, architecture and best practices.',
        thumbnaiUrl: 'assets/images/test.png',
        videoCount: 35,
        isPrivate: true,
      ),
    ];
  }
}