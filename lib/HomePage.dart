import 'package:flutter/material.dart';

import 'Calls.dart';
import 'ChatScreen.dart';
import 'Communities.dart';
import 'Updates.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  bool isSearchActive = false;  // To toggle the search bar visibility
  String searchQuery = '';      // The current search query

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: isSearchActive
            ? TextField(
          autofocus: true,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Search...",
            hintStyle: TextStyle(color: Colors.white70),
            border: InputBorder.none,
          ),
          onChanged: (query) {
            setState(() {
              searchQuery = query; // Update search query
            });
          },
        )
            : Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(isSearchActive ? Icons.clear : Icons.search),
            onPressed: () {
              setState(() {
                isSearchActive = !isSearchActive;
                if (!isSearchActive) {
                  searchQuery = ''; // Reset the search query when closing the search bar
                }
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: [
          Chats(searchQuery: searchQuery), // Pass search query to Chats
          Updates(),
          Communities(),
          Calls(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: 'Calls',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'New Chat',
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.green.shade600,
      ),
    );
  }
}
