import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget{

  final String title;
  DetailScreen({this.title});
  
  @override
  Widget build(BuildContext context){
    // TODO: implement createState
    return Scaffold(
      appBar: AppBar(
        title:  Text("$title Screen"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("Go away pachara"),
          onPressed: (){
            Navigator.pushNamed(context, "/second");
          },
        ),
      ),
    );
  }
}