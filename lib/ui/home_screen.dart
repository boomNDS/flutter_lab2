import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
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
          // children: <Widget>[
          //   Text("1" ,textAlign: TextAlign.center,),
          //   Text("2",textAlign: TextAlign.center,),
          //   Text("3",textAlign: TextAlign.center,),
          //   Text("4",textAlign: TextAlign.center,),
          //   Text("5",textAlign: TextAlign.center,),
          // ],
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
            )
          ],
        ),
      )
    );
  }

}