import 'package:flutter/material.dart';
import 'package:jagoflutter2/uiscreen/page_tab1.dart';

class PageTabBar extends StatefulWidget {
  @override
  _PageTabBarState createState() => _PageTabBarState();
}

class _PageTabBarState extends State<PageTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text('Tab Bar Menu'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.alarm),),
              Tab(icon: Icon(Icons.ac_unit),),
              Tab(icon: Icon(Icons.camera),),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            // Text('Tab satu'),
            PageTab1(),
            Text('Tab Dua'),
            Text('Tab Tiga'),

          ],
        ),


      ),
    );
  }
}
