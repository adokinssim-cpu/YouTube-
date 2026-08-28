class DownloadedVideo {
  final int id;
  final String title;
  final String channelName;
  final String thumbnail;
  final String videoUrl;
  final Duration duration;
  final DateTime downloadedAt;

  DownloadedVideo({
    required this.id,
    required this.title,
    required this.channelName,
    required this.thumbnail,
    required this.videoUrl,
    required this.duration,
    required this.downloadedAt,
  });
}