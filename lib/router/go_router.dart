import 'package:go_router/go_router.dart';
import 'package:youtube/models/download.dart';
import 'package:youtube/models/video.dart';
import 'package:youtube/pages/Main_screens/add_screen.dart';
import 'package:youtube/pages/Main_screens/home_screen.dart';
import 'package:youtube/pages/Main_screens/main_screen.dart';
import 'package:youtube/pages/download_detail_page.dart';
import 'package:youtube/pages/download_page.dart';
import 'package:youtube/pages/history_detail_page.dart';
import 'package:youtube/pages/history_page.dart';
import 'package:youtube/pages/playlist_page.dart';
import 'package:youtube/pages/search_page.dart';
import 'package:youtube/pages/Main_screens/shorts_screen.dart';
import 'package:youtube/pages/Main_screens/subscriptions.dart';
import 'package:youtube/pages/Main_screens/you_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => MainScreen(child: child),

      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: '/shorts',
          builder: (context, state) => const ShortsScreen(),
        ),
        GoRoute(
          path: '/add',
          builder: (context, state) => const AddScreen(),
        ),
        GoRoute(
          path: '/subscriptions',
          builder: (context, state) => const SubscriptionScreen(),
        ),
        GoRoute(
          path: '/you',
          builder: (context, state) => const YouScreen(),
        ),
        GoRoute(
          path: '/history_page',
          builder: (context, state) => const HistoryPage(),
        ),
        GoRoute(
           path: '/download',
          builder: (context, state) => const DownloadPage(),
        ),
        
      ]
      
    ),
    GoRoute(
          path: '/search',
          builder: (context, state) => const SearchPage(),
    ),
   
    GoRoute(
        path: '/download_detail',
        builder: (context, state){
          // on recure les donnees envoyes dans le push avec extra
          final video = state.extra as DownloadedVideo;
          return DownloadDetailPage(video: video);
        },
    ),
    GoRoute(
        path: '/history_detail_page',
        builder: (context, state){
          // on recure les donnees envoyes dans le push avec extra
          final video = state.extra as Video;
          return HistoryDetailPage(
            video: video,
          );
        },
    ),
    GoRoute(
        path: '/playlist_page',
        builder: (context, state){
          // on recure les donnees envoyes dans le push avec extra
          //final video = state.extra as Video;
          // return HistoryDetailPage(
          //   video: video,
          // );
          return PlaylistPage();
        },

    ),

   
    
  ]
);