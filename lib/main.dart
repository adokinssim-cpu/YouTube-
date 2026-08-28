import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/provider/history_provider.dart';
import 'package:youtube/provider/library_provider.dart';
import 'package:youtube/provider/playlist_provider.dart';
import 'package:youtube/provider/theme_provider.dart';
import 'package:youtube/repositories/download_repository.dart';
import 'package:youtube/repositories/library_repository.dart';
import 'package:youtube/repositories/playlist_repository.dart';
import 'package:youtube/repositories/video_repository.dart';
import 'package:youtube/router/go_router.dart';
import 'package:youtube/theme/app_theme.dart';

import 'provider/download_provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),

        Provider<VideoRepository>(
          create: (_) => VideoRepository(),
        ),

        ChangeNotifierProvider(
          create: (context) => HistoryProvider(
            context.read<VideoRepository>(),
          ),
        ),
        Provider<LibraryRepository>(
          create:(_)=> LibraryRepository(),
        ),
        ChangeNotifierProvider(
          create: (context)=>LibraryProvider(context.read<LibraryRepository>())
        ),
        Provider<DownloadRepository>(
         create: (_) => DownloadRepository(),
        ),

        ChangeNotifierProvider(
          create: (context) => DownloadProvider(
            context.read<DownloadRepository>(),
          ),
        ),
        Provider<PlaylistRepository>(
         create: (_) => PlaylistRepository(),
        ),

        ChangeNotifierProvider(
          create: (context) => PlaylistProvider(
            context.read<PlaylistRepository>()
          ),
        )
      ],
      child:  MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {

  
  MyApp({super.key });

  @override
  Widget build(BuildContext context) {

  final AppTheme apptheme = AppTheme();
  final ThemeProvider themeProvider = context.watch<ThemeProvider>();
  
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme:apptheme.lightmode ,
      darkTheme: apptheme.darkmode,
      themeMode: ThemeMode.system,
    );
  }
}