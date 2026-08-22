class VideoModel {
  final String id;
  final String title;
  final String channelName;
  final String channelAvatar;
  final String views;
  final String timeAgo;
  final String thumbnailUrl;
  final String duration;

  VideoModel({
    required this.id,
    required this.title,
    required this.channelName,
    required this.channelAvatar,
    required this.views,
    required this.timeAgo,
    required this.thumbnailUrl,
    required this.duration,
  });
}
