import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube/provider/history_provider.dart';
import 'package:youtube/widgets/video_history_card.dart';

// this class is responsible to display history video from the historyProvider
// historyProvider is the one who load video
class HistorySection extends StatefulWidget {
  const HistorySection({super.key});

  @override
  State<HistorySection> createState() => _HistorySectionState();
}

class _HistorySectionState extends State<HistorySection> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask((() => context.read<HistoryProvider>().loadHistory()));
  }

  @override
  Widget build(BuildContext context) {
    final historyProvider = context.watch<HistoryProvider>();

    // load the video's history 
    //historyProvider.loadHistory();

    final history = historyProvider.getHistory; 

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('History >',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(height: 12,),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: history.length,
            itemBuilder: (context,index){
              final video = history[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: VideoHistoryCard(video:video),
              );
            }
          ),
        )

      ],
    );
  }
}