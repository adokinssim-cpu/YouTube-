import 'package:flutter/material.dart';
import 'package:youtube/models/playlist.dart';
import 'package:youtube/repositories/playlist_repository.dart';


class PlaylistProvider  extends ChangeNotifier{
  final PlaylistRepository playlistRepository;
  PlaylistProvider(this.playlistRepository);
  List<Playlist> _playlistBoard = [];
  List<Playlist>   get getPlaylist =>_playlistBoard;

  Future<void> loadPlaylist() async{
    _playlistBoard = await playlistRepository.getPlaylists();
  }
}