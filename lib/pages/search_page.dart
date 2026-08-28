import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  late TextEditingController searchController ;
  late FocusNode searchFocusNode;

  @override
  void initState() {
    searchController = TextEditingController();
    searchFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          controller: searchController,
          focusNode: searchFocusNode,
          decoration: InputDecoration(
            hintText: 'recherche',
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(30)
            // )
            border: InputBorder.none
          ),
          onSubmitted: (value){
         
            print('resultats de recherche:$value');
          },
        ),
        actions: [
          IconButton(onPressed: (){ print('button mic onpress');}, icon: Icon(Icons.mic))
        ],
      ),
      body: Center(
        child: Text("resultat de recherche: < > "),
      ),
    );
  }
}