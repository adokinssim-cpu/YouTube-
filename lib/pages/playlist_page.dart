import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:youtube/provider/download_provider.dart';
import 'package:youtube/provider/playlist_provider.dart';
import 'package:youtube/widgets/playlist_card.dart';

class PlaylistPage extends StatefulWidget {

  const PlaylistPage ({super.key});


  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<PlaylistProvider>().loadPlaylist();
    });
  }
  @override
  Widget build(BuildContext context) {
    final playlists = context.watch<PlaylistProvider>().getPlaylist;
    return Scaffold(
      appBar: AppBar(title: Text('playlist', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
          Text('Playlist'),
          SizedBox(height: 8,),
          ListView.builder(
            itemCount:playlists.length ,
            itemBuilder: (context,index){
              final playlist = playlists[index];
              return PlaylistCard(
                onTap: (){context.push('/playlist_page');}, 
                playlist: playlist
              );
            }
          )
        ],
      )
    );
  }
}