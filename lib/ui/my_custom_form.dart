import 'package:flutter/material.dart';

class MyCustomForm extends StatefulWidget{
  @override
  MyCustomFormState createState() {
    // TODO: implement createState
    return MyCustomFormState();
      }
}

class MyCustomFormState extends State<MyCustomForm>{
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Form"),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "resources/izone.jpg",
              height: 100,
              ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Please input your email",
                icon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
              onSaved: (value) => print(value),
                validator: (value){
                  if(value.isEmpty){
                    return "Please  input value";
                  }
                },
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Please input your password",
                icon: Icon(Icons.lock),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              onSaved: (value) => print(value),
                validator: (value){
                  if(value.isEmpty){
                    return "Please  input value";
                  }
                },
            ),
            RaisedButton(
              child: Text("Continue"),
              onPressed: (){
                _formKey.currentState.validate();
              },
            )
          ],
        ),
      ),
    );
  }}