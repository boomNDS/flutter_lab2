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
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String _id;
  String _pass;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
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
              onSaved: (id) => print(id),
                validator: (value){
                  if(value.isEmpty){
                    return "Please  input value";
                  }else{
                    _id = value;
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
              onSaved: (pass) => print(pass),
                validator: (value){
                  if(value.isEmpty){
                    return "Please  input value";
                  }else{
                    _pass = value;
                  }
                },
            ),
            RaisedButton(
              child: Text("Login"),
              onPressed: (){
                // _formKey.currentState.validate();
                if(_formKey.currentState.validate() == false){
                  print("กรุณา ระบุuser or password");
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                    content: Text('กรุณา ระบุuser or password'),
                    duration: Duration(seconds: 3),
                    )
                  );
                }else if(_id == "admin" && _pass == "admin"){
                  // Navigator.pushNamed(context, "/home");
                  print("user or password ไม่ถูกต้อง");
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                    content: Text('user or password ไม่ถูกต้อง'),
                    duration: Duration(seconds: 3),
                    )
                  );
                }else{
                  print("home");
                  Navigator.pushReplacementNamed(context, "/home");
                }
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
  }
}