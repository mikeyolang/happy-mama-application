import 'package:flutter/material.dart';

class CommunityForumUI extends StatelessWidget {
  const CommunityForumUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community Forum'),
      ),
      body: ListView.builder(
        itemCount: communityPosts.length,
        itemBuilder: (context, index) {
          return PostCard(post: communityPosts[index]);
        },
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final CommunityPost post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(post.author.substring(0, 1)),
            ),
            title: Text(post.author),
            subtitle: Text(post.timestamp),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(post.content),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.thumb_up),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.comment),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.share),
                onPressed: () {},
              ),
            ],
          ),
          const Divider(),
          CommentSection(comments: post.comments),
        ],
      ),
    );
  }
}

class CommentSection extends StatelessWidget {
  final List<Comment> comments;

  const CommentSection({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('Comments (${comments.length})'),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: comments.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text(comments[index].author.substring(0, 1)),
              ),
              title: Text(comments[index].author),
              subtitle: Text(comments[index].timestamp),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              trailing: IconButton(
                icon: const Icon(Icons.thumb_up),
                onPressed: () {},
              ),
            );
          },
        ),
      ],
    );
  }
}

class CommunityPost {
  final String author;
  final String content;
  final String timestamp;
  final List<Comment> comments;

  CommunityPost(
      {required this.author,
      required this.content,
      required this.timestamp,
      required this.comments});
}

class Comment {
  final String author;
  final String timestamp;

  Comment({required this.author, required this.timestamp});
}

List<CommunityPost> communityPosts = [
  CommunityPost(
    author: 'User1',
    content: 'This is the first post. What do you think?',
    timestamp: '2 hours ago',
    comments: [
      Comment(author: 'User2', timestamp: '1 hour ago'),
      Comment(author: 'User3', timestamp: '30 minutes ago'),
    ],
  ),
  CommunityPost(
    author: 'User4',
    content: 'Just sharing something interesting!',
    timestamp: '1 day ago',
    comments: [
      Comment(author: 'User5', timestamp: '23 hours ago'),
    ],
  ),
  // Add more posts as needed
];
