import 'package:flutter/material.dart';

class LibraryItem {
  final int id;
  final String title;
  final String? subtitle;
  final String thumbnail;
  final IconData icon;


  const LibraryItem({
    required this.id,
    required this.title,
    this.subtitle,
    required this.thumbnail,
    required this.icon
    ,
  });
}