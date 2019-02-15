import 'package:flutter/material.dart';

class Loginform extends StatefulWidget{
  @override
  LoginformState createState() {
    // TODO: implement createState
    return LoginformState();
      }
}

class LoginformState extends State<Loginform>{
  final _formKey = GlobalKey<FormState>();
  String _id;
  String _pass;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 30, 50, 30),
        child:Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "resources/izone.jpg",
              height: 100,
              ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "User ID",
                hintText: "Please input your ID",
                icon: Icon(Icons.person),
              ),
              keyboardType: TextInputType.text,
              onSaved: (value) => print(value),
                validator: (value){
                  if(value.isEmpty){
                    return "Please  input value";
                  }else if(value != "admin"){
                    return "user or password ไม่ถูกต้อง";
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
              child: Text("Login"),
              onPressed: (){
                _formKey.currentState.validate();
                Navigator.pushNamed(context, "/home");
              },
            ),
            FlatButton(
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Register New Account',
                  textAlign: TextAlign.right,
                  style:  TextStyle(color: Colors.green.withOpacity(0.8)),
                ),
              ),
                onPressed: (){
                  print("click register new account");
                  Navigator.pushNamed(context, "/register");
                },
            )
          ],
        ),
      ),
      ),
    );
  }}