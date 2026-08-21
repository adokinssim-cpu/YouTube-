
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar ({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.network('https://upload.wikimedia.org/wikipedia/commons/b/b8/YouTube_Logo_2017.svg',
            height: 20,
            errorBuilder: (context, error, stackTrace) => const Text('YouTube',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),        
         ),
        ],
      ),
      actions: [
        IconButton(icon : const Icon (Icons.cast), onPressed:  () {}),
        IconButton(icon : const Icon (Icons.notifications_none), onPressed: () {}),
        IconButton(icon : const Icon(Icons.search), onPressed: () {}),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: CircleAvatar(
            radius: 14,
            backgroundImage: 
            NetworkImage('https://picsum.photos/id/1005/100/100'),
          ),
          ),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
   
}
