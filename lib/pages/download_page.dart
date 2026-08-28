import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:youtube/widgets/AppBar_youtube.dart';
import 'package:youtube/widgets/download_card.dart';

import '../provider/download_provider.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<DownloadProvider>().loadDownloads();
    });
  }
  @override
  Widget build(BuildContext context) {
    final downloads = context.watch<DownloadProvider>().downloads;

    
    return Scaffold(
      appBar: AppBar(
        title: Text('Download'),
        actions: [
          IconButton(
            onPressed: (){
              context.push('/search');
            }, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Your downloads', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            SizedBox(height: 8,),
            Expanded(
              child: ListView.builder(
                
                itemCount: downloads.length,
                itemBuilder: (context,index){
                  final download = downloads[index];
                   return DownloadCard(
                    downloadVideo: download,
                    ontap: (){
                      context.push('/download_detail', extra: download);
                    },
                  );
                }
              )
            )
          ],
        ),
      )
    );
  }
}