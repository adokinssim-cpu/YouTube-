import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:youtube/provider/history_provider.dart';
import 'package:youtube/widgets/video_history_1.dart';


class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {


  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<HistoryProvider>().loadHistory();
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final history = context.watch<HistoryProvider>().getHistory;
    return Scaffold(
      appBar: AppBar(title: Text('History', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
      body: ListView.builder(
        itemCount: history.length,
        itemBuilder: (context, index) {
          final video = history[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: VideoHistoryCard1(
              video: video,
              ontap: (){
                context.push('/history_detail_page',extra:video );
              },
            ),
          );
          // return ListTile(
          //   title: Text(video.title),
          //   subtitle: Text(video.channelName),
          // );
        },
      ),
    );
    
  }
}