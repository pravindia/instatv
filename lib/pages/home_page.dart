import 'package:flutter/material.dart';
import 'package:instatv/apiservice.dart';

import 'widgets/posts.dart';

class HomePageFeed extends StatefulWidget {
  const HomePageFeed({super.key});

  @override
  State<HomePageFeed> createState() => _HomePageFeedState();
}

class _HomePageFeedState extends State<HomePageFeed> {
  ApiService _service = ApiService();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Insta TV"),
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ),
      body: ListView.custom(
          primary: true,
          childrenDelegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Posts();
          })),
    );
  }
}
