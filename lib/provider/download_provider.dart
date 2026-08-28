import 'package:flutter/material.dart';
import 'package:youtube/models/download.dart';
import 'package:youtube/repositories/download_repository.dart';

class DownloadProvider extends ChangeNotifier {
  final DownloadRepository downloadRepository;

  DownloadProvider(this.downloadRepository);

  List<DownloadedVideo> _downloads = [];

  List<DownloadedVideo> get downloads => _downloads;

  Future<void> loadDownloads() async {
    _downloads = await downloadRepository.getDownloadedVideos();

    notifyListeners();
  }
}