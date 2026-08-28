import 'package:youtube/models/video.dart';

class VideoRepository {

  Future<List<Video>> getHistory()async{
    await Future.delayed(const Duration(seconds: 0));
    return videos;
  }
  final List<Video> videos = [
  Video(
    id: '1',
    title: 'Rihanna - Diamonds',
    channelName: 'Rihanna',
    thumbnailUrl: 'assets/images/test.png',
    duration: '25:37',
    views: 2400,
  ),
  Video(
    id: '2',
    title: 'Shape of You',
    channelName: 'Ed Sheeran',
    thumbnailUrl: 'assets/images/test.png',
    duration: '04:23',
    views: 12000,
  ),
  Video(
    id: '3',
    title: 'Blinding Lights',
    channelName: 'The Weeknd',
    thumbnailUrl: 'assets/images/test.png',
    duration: '03:45',
    views: 8500,
  ),
  Video(
    id: '4',
    title: 'Someone Like You',
    channelName: 'Adele',
    thumbnailUrl: 'assets/images/test.png',
    duration: '04:12',
    views: 15600,
  ),
  Video(
    id: '5',
    title: 'Perfect',
    channelName: 'Ed Sheeran',
    thumbnailUrl: 'assets/images/test.png',
    duration: '04:39',
    views: 9300,
  ),
  Video(
    id: '6',
    title: 'Stay',
    channelName: 'Justin Bieber',
    thumbnailUrl: 'assets/images/test.png',
    duration: '02:21',
    views: 18700,
  ),
  Video(
    id: '7',
    title: 'Havana',
    channelName: 'Camila Cabello',
    thumbnailUrl: 'assets/images/test.png',
    duration: '03:37',
    views: 7600,
  ),
  Video(
    id: '8',
    title: 'Lovely',
    channelName: 'Billie Eilish',
    thumbnailUrl: 'assets/images/test.png',
    duration: '03:20',
    views: 21400,
  ),
  Video(
    id: '9',
    title: 'Levitating',
    channelName: 'Dua Lipa',
    thumbnailUrl: 'assets/images/test.png',
    duration: '03:23',
    views: 11200,
  ),
  Video(
    id: '10',
    title: 'Bad Guy',
    channelName: 'Billie Eilish',
    thumbnailUrl: 'assets/images/test.png',
    duration: '03:14',
    views: 19800,
  ),
  Video(
    id: '11',
    title: 'Uptown Funk',
    channelName: 'Bruno Mars',
    thumbnailUrl: 'assets/images/test.png',
    duration: '04:30',
    views: 24500,
  ),
  Video(
    id: '12',
    title: 'Counting Stars',
    channelName: 'OneRepublic',
    thumbnailUrl: 'assets/images/test.png',
    duration: '04:17',
    views: 13400,
  ),
];
}