import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    // TODO: implement createState
    return Scaffold(
      appBar: AppBar(
        title:  Text("Second Screen"),
      ),
      body: Center(
        child: FlatButton(
          child: Text("Go away pachara"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }

}