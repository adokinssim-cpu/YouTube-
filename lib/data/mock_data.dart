import '../models/video_model.dart';

class MockData {
  static final List<String> categories = [
    'Tous',
    'Gaming',
    'Musique',
    'Flutter',
    'Technologie',
    'Podcasts',
    'Développement web',
    'Actualités',
  ];

  static final List<VideoModel> videos = [
    VideoModel(
      id: '1',
      title: 'Créer une application YouTube complète en Flutter (2026)',
      channelName: 'Code Master',
      channelAvatar: 'https://picsum.photos/seed/user1/100/100',
      views: '125 k vues',
      timeAgo: 'il y a 2 jours',
      thumbnailUrl: 'https://picsum.photos/seed/yt1/600/350',
      duration: '14:25',
    ),
    VideoModel(
      id: '2',
      title: 'Apprendre Dart de zéro à expert : Le Guide Ultime',
      channelName: 'Tech & Code',
      channelAvatar: 'https://picsum.photos/seed/user2/100/100',
      views: '48 k vues',
      timeAgo: 'il y a 1 semaine',
      thumbnailUrl: 'https://picsum.photos/seed/yt2/600/350',
      duration: '45:10',
    ),
    VideoModel(
      id: '3',
      title: 'Top 10 des tendances technologiques en Afrique',
      channelName: 'Innovations TV',
      channelAvatar: 'https://picsum.photos/seed/user3/100/100',
      views: '12 k vues',
      timeAgo: 'il y a 3 heures',
      thumbnailUrl: 'https://picsum.photos/seed/yt3/600/350',
      duration: '08:40',
    ),
  ];
}
