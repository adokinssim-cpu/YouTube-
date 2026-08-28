import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:youtube/widgets/AppBar_youtube.dart';


class MainScreen extends StatelessWidget {
  final Widget child;

  const MainScreen({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {

    

    // deduisons le current index a partir de la route actuelle
    // 1- recuperation de la route
    final String location = GoRouterState.of(context).uri.path;
    // deternine quel button dois etre selectionne
    int currentIndex = 0;

    // en fonction de la route on adapte le current index

    switch(location){
      case'/':
        currentIndex = 0;
        break;
      case'/shorts':
        currentIndex = 1;
        break;
      case'/add':
        currentIndex = 2;
        break;
      case'/subscriptions':
        currentIndex = 3;
        break;
      case'/you':
        currentIndex = 4;
        break;
    }
    
    return Scaffold(
      
      //appBar: AppbarYoutube(),

      body: child,

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex, // button qui est actuellement selectionne
        onTap: (index){
          switch(index){
            case 0:
             // button que l'utilisateur touche
              context.go('/');
              
              break;
            case 1:
              print('index: $index');
              context.go('/shorts');
              break;
            case 2:
              context.go('/add');
              break;
            case 3:
              context.go('/subscriptions');
              break;
            case 4:
              context.go('/you');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: 'Shorts',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Create',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            label: 'Subscriptions',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'You',
          ),
        ],
      ),
    );
  }
}