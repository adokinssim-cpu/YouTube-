import 'package:flutter/material.dart';
import 'package:youtube/models/library_item.dart';
import 'package:youtube/repositories/library_repository.dart';

class LibraryProvider extends ChangeNotifier{
  final LibraryRepository libraryRepository;

  LibraryProvider(this.libraryRepository);

  List<LibraryItem> _items = [];

  List<LibraryItem> get items => _items;

  Future<void> loadLibrary() async {
    _items = await libraryRepository.getLivraryRepository();
    notifyListeners();
  }
}