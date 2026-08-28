import 'package:youtube/models/download.dart';

class DownloadRepository {
  Future<List<DownloadedVideo>> getDownloadedVideos() async {
    // Simulation d'une attente réseau de 0 seconde
    await Future.delayed(const Duration(seconds: 0));

    return downloadedVideos;
  }

  final List<DownloadedVideo> downloadedVideos = [
    DownloadedVideo(
      id: 1,
      title: 'Learn Flutter in 2026',
      channelName: 'Flutter Academy',
      thumbnail: 'assets/images/test.png',
      videoUrl: 'https://example.com/video1.mp4',
      duration: Duration(minutes: 12, seconds: 35),
      downloadedAt: DateTime(2026, 8, 20),
    ),

    DownloadedVideo(
      id: 2,
      title: 'Flutter Clean Architecture',
      channelName: 'Code With Me',
      thumbnail: 'assets/images/test.png',
      videoUrl: 'https://example.com/video2.mp4',
      duration: Duration(minutes: 18, seconds: 42),
      downloadedAt: DateTime(2026, 8, 19),
    ),

    DownloadedVideo(
      id: 3,
      title: 'Provider State Management',
      channelName: 'Flutter Dev',
      thumbnail: 'assets/images/test.png',
      videoUrl: 'https://example.com/video3.mp4',
      duration: Duration(minutes: 10, seconds: 25),
      downloadedAt: DateTime(2026, 8, 18),
    ),

    DownloadedVideo(
      id: 4,
      title: 'Build a YouTube Clone with Flutter',
      channelName: 'Mobile Developers',
      thumbnail: 'assets/images/test.png',
      videoUrl: 'https://example.com/video4.mp4',
      duration: Duration(minutes: 25, seconds: 10),
      downloadedAt: DateTime(2026, 8, 17),
    ),

    DownloadedVideo(
      id: 5,
      title: 'Flutter Navigation with GoRouter',
      channelName: 'Flutter Master',
      thumbnail: 'assets/images/test.png',
      videoUrl: 'https://example.com/video5.mp4',
      duration: Duration(minutes: 14, seconds: 50),
      downloadedAt: DateTime(2026, 8, 16),
    ),

    DownloadedVideo(
      id: 6,
      title: 'REST API with Flutter',
      channelName: 'Code Factory',
      thumbnail: 'assets/images/test.png',
      videoUrl: 'https://example.com/video6.mp4',
      duration: Duration(minutes: 21, seconds: 15),
      downloadedAt: DateTime(2026, 8, 15),
    ),

    DownloadedVideo(
      id: 7,
      title: 'Flutter Widgets You Should Know',
      channelName: 'Flutter School',
      thumbnail: 'assets/images/test.png',
      videoUrl: 'https://example.com/video7.mp4',
      duration: Duration(minutes: 16, seconds: 30),
      downloadedAt: DateTime(2026, 8, 14),
    ),

    DownloadedVideo(
      id: 8,
      title: 'Mastering Dart',
      channelName: 'Dart Developers',
      thumbnail: 'assets/images/test.png',
      videoUrl: 'https://example.com/video8.mp4',
      duration: Duration(minutes: 32, seconds: 5),
      downloadedAt: DateTime(2026, 8, 13),
    ),

    DownloadedVideo(
      id: 9,
      title: 'Flutter Responsive Design',
      channelName: 'UI Masters',
      thumbnail: 'assets/images/test.png',
      videoUrl: 'https://example.com/video9.mp4',
      duration: Duration(minutes: 11, seconds: 45),
      downloadedAt: DateTime(2026, 8, 12),
    ),

    DownloadedVideo(
      id: 10,
      title: 'State Management Explained',
      channelName: 'Tech Tutorials',
      thumbnail: 'assets/images/test.png',
      videoUrl: 'https://example.com/video10.mp4',
      duration: Duration(minutes: 20, seconds: 20),
      downloadedAt: DateTime(2026, 8, 11),
    ),
  ];
}