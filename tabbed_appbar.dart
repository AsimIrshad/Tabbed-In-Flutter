import 'package:flutter/material.dart';

class tabbed_appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Colors.teal,
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            Icon(Icons.more_vert),
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Tab(
                  icon: Icon(Icons.photo_camera),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Tab(
                  text: 'CHATS',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Tab(
                  text: 'STATUS ',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Tab(
                  text: 'CALLS',
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(
              Icons.photo_camera,
              size: 150.0,
            ),
            Icon(
              Icons.chat,
              size: 150.0,
            ),
            Icon(
              Icons.rss_feed,
              size: 150.0,
            ),
            Icon(
              Icons.call,
              size: 150.0,
            ),
          ],
        ),
      ),
    );
  }
}
