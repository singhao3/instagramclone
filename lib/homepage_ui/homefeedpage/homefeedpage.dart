import 'package:flutter/material.dart';

class HomeFeedPage extends StatefulWidget {
  const HomeFeedPage({Key? key}) : super(key: key);

  @override
  State<HomeFeedPage> createState() => _HomeFeedPageState();
}

class _HomeFeedPageState extends State<HomeFeedPage> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'images/instagram_logo.png',
            height: 30,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
            onPressed: () {
              // Handle like button pressed
            },
          ),
          IconButton(
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.black,
            ),
            onPressed: () {
              // Handle chat button pressed
            },
          ),
        ],
      ),
      body: Column(
        children: [
          _buildStories(),
          Expanded(
            child: _buildUserPosts(),
          ),
        ],
      ),
    );
  }

  Widget _buildStories() {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
          );
        },
      ),
    );
  }

  Widget _buildUserPost() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      padding: EdgeInsets.all(8.0),
      width: double.infinity, // Set width to occupy full width of the screen
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage('https://via.placeholder.com/150'),
              ),
              SizedBox(width: 10.0),
              Text(
                'Username',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 8.0),
          Image.network(
            'https://via.placeholder.com/300',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                },
                child: Icon(
                  isLiked ? Icons.favorite : Icons.favorite_border,
                  color: isLiked ? Colors.red : Colors.black,
                ),
              ),
              SizedBox(width: 4.0),
              Text('Likes'),
              SizedBox(width: 8.0),
              Icon(Icons.chat_bubble_outline),
              SizedBox(width: 4.0),
              Text('Comments'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUserPosts() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return _buildUserPost();
      },
    );
  }
}