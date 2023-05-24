import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
  // return Scaffold(
  //     appBar: AppBar(
  //       backgroundColor: Colors.white,
  //       elevation: 0,
  //       title: TextField(
  //         decoration: InputDecoration(
  //           hintText: 'Search',
  //           border: InputBorder.none,
  //           hintStyle: TextStyle(color: Colors.grey),
  //         ),
  //       ),
  //     ),
  //     body: Center(
  //       child: Text(
  //         'Search',
  //         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  //       ),
  //     ),
  //   );
  TextEditingController _searchController = TextEditingController();
   return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: 'Search',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            String searchQuery = _searchController.text;
            print('Performing search for: $searchQuery');
            // Add your search functionality here
          },
          child: Text('Search'),
        ),
      ),
    );

  }
}