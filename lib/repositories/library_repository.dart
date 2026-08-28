import 'package:flutter/material.dart';
import 'package:youtube/models/library_item.dart';

class LibraryRepository {

  Future<List<LibraryItem>> getLivraryRepository() async{
    await Future.delayed(const Duration(seconds: 0));
    return libraryItems;
  }

  final libraryItems = [
  LibraryItem(
    id: 0,
    title: 'Liked videos',
    subtitle: 'private',
    thumbnail: 'assets/images/test.png',
    icon: Icons.thumb_up_outlined,
  ),
  LibraryItem(
    id: 1,
    title: 'Downloads',
    subtitle: 'private',
    thumbnail: 'assets/images/test.png',
    icon: Icons.download_outlined,
  ),
  LibraryItem(
    id: 2,
    title: 'Watch later',
    subtitle: 'private',
    thumbnail: 'assets/images/test.png',
    icon: Icons.watch_later_outlined,
  ),
  // LibraryItem(
  //   title: 'Your videos',
  //   subtitle: 'public',
  //   thumbnail: '/assets/images/test.png',
  //   icon: Icons.video_library_outlined,
  // ),
  LibraryItem(
    id: 3,
    title: 'Playlists',
    subtitle: 'private',
    thumbnail: 'assets/images/test.png',
    icon: Icons.playlist_play_outlined,
  ),
  // LibraryItem(
  //   title: 'Favorites',
  //   subtitle: 'private',
  //   thumbnail: '/assets/images/test.png',
  //   icon: Icons.favorite_border,
  // ),
  // LibraryItem(
  //   title: 'Recently watched',
  //   subtitle: 'private',
  //   thumbnail: '/assets/images/test.png',
  //   icon: Icons.history,
  // ),
  // LibraryItem(
  //   title: 'Saved videos',
  //   subtitle: 'private',
  //   thumbnail: '/assets/images/test.png',
  //   icon: Icons.bookmark_border,
  // ),
  LibraryItem(
    id: 3,
    title: 'Badges',
    subtitle: 'public',
    thumbnail: 'assets/images/test.png',
    icon: Icons.emoji_events_outlined,
  ),
  // LibraryItem(
  //   title: 'Offline videos',
  //   subtitle: 'private',
  //   thumbnail: '/assets/images/test.png',
  //   icon: Icons.offline_pin_outlined,
  // ),
];
}