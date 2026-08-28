import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:youtube/provider/library_provider.dart';
import 'package:youtube/widgets/history_section.dart';
import 'package:youtube/widgets/library_section.dart';

class YouScreen extends StatefulWidget {
  const YouScreen({super.key});

  @override
  State<YouScreen> createState() => _YouScreenState();
}

class _YouScreenState extends State<YouScreen> {

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<LibraryProvider>().loadLibrary();
    });
  }

  @override
  Widget build(BuildContext context) {
    final libraryItems = context.watch<LibraryProvider>().items;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notification_add),
          ),
          IconButton(
            onPressed: () {context.push('/search');},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),

      // Scroll vertical principal
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // PROFILE
              Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    radius: 35,
                    child: Text(
                      'N',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  const SizedBox(width: 10),

                  const Text(
                    'Nkamga Nelson',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // CREATE CHANNEL
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                    ),
                    child: const Text(
                      'Create a channel',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // HISTORY
              const HistorySection(),

              const SizedBox(height: 20),

              // LIBRARY
              LibrarySection(
                items: libraryItems,
              ),
            ],
          ),
        ),
      ),
    );
  }
}