import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class AppbarYoutube extends StatelessWidget implements PreferredSizeWidget {
 
  const AppbarYoutube({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.youtube,
            color: Colors.red,
            size: 30,
          ),
          const SizedBox(width: 8),
          const Text(
            'YouTube',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),

      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications),
        ),
        IconButton(
          onPressed: () {
            context.push('/search');
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }
}