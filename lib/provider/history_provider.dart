import 'package:flutter/material.dart';
import 'package:youtube/models/video.dart';
import 'package:youtube/repositories/video_repository.dart';

class HistoryProvider  extends ChangeNotifier{
  final VideoRepository videoRepository;
  HistoryProvider(this.videoRepository);

  List<Video> _history = [];
  List<Video> get getHistory => _history;

  Future<void> loadHistory()async{
    _history = await videoRepository.getHistory();
    notifyListeners();
  }
}