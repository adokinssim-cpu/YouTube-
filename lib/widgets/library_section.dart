import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube/models/library_item.dart';
import 'package:youtube/widgets/library_item_widget.dart';

class LibrarySection extends StatelessWidget {
  final List<LibraryItem> items;
  const LibrarySection({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
            'Library',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        

        const SizedBox(height: 16),

        SizedBox(
          
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            //scrollDirection: Axis.horizontal,
            // padding: const EdgeInsets.symmetric(horizontal: 2),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];

              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: LibraryItemWidget(
                  item: item,
                  onTap: (){
                    
                    switch (item.id) {
                      case 0:
                        context.push('/liked');
                        break;

                      case 1:
                        context.push('/download');
                        break;

                      case 2:
                        context.push('/watch_later');
                        break;

                      case 3:
                        context.push('/playlists');
                        break;

                      case 4:
                        context.push('/badges');
                        break;
                    }
                   
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}