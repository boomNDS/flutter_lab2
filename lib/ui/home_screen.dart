import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget{
  String nametitle = "Home";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("$nametitle"),
          centerTitle: true,
        ),
        bottomNavigationBar: Material(
          color: Colors.indigo,
          child: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.notifications),
              ),
              Tab(
                icon: Icon(Icons.map),
              ),
              Tab(
                icon: Icon(Icons.person),
              ),
              Tab(
                icon: Icon(Icons.settings),
              ),
            ],
          )
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text("Home"),
            ),
            Center(
              child: Text("Notify"),
            ),
            Center(
              child: Text("Map"),
            ),
            Center(
              child: Text("Profile"),
            ),
            Center(
              child: Text("Setup"),
            ),
          ],
        ),
      )
    );
  }

}