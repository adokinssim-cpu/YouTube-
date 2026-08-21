import 'package:flutter/material.dart';
import 'package:youtube/pages/main_screen.dart';


void main() {
  runApp(const YouTubeApp());
}

class YouTubeApp extends StatelessWidget {
  const YouTubeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube Clone',
      debugShowCheckedModeBanner: false,

      themeMode: ThemeMode.dark,

      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0F0F0F),
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),

        colorScheme: const ColorScheme.dark(
          primary: Colors.red,
          surface: Color(0xFF0F0F0F),
        ),
      ),

      // 👇 C'est ici que ton application doit démarrer
      home: const MainScreen(),
    );
  }
}