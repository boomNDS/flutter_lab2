import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget{
  @override
  RegisterFormState createState() {
    // TODO: implement createState
    return RegisterFormState();
  }
}
class RegisterFormState extends State<RegisterForm>{
  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String _id;
  String _pass;
  String _pass2;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTER"),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.fromLTRB(40, 30, 40, 30),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText:  "Please input your Email",
                  icon: Icon(Icons.person,color: Colors.blue,),
                ),
                keyboardType: TextInputType.text,
                onSaved: (value) => print(value),
                validator: (value){
                  if(value.isEmpty){
                    return "Please input value";
                  }else{
                    _id = value;
                  }
                },
              ),
              TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Please input your password",
                icon: Icon(Icons.lock,color: Colors.blue,),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              onSaved: (value) => print(value),
                validator: (value){
                  if(value.isEmpty){
                    return "Please  input value";
                  }else{
                    _pass = value;
                  }
                },
            ),
              TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Please input your password again",
                icon: Icon(Icons.lock, color: Colors.blue,),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
              onSaved: (value) => print(value),
                validator: (value){
                  if(value.isEmpty){
                    return "Please  input value";
                  }else{
                    _pass2 = value;
                  }
                },
            ),
            RaisedButton(
              child: Text("Continue"),
              onPressed: (){
                _formKey.currentState.validate();
                if(_id == "admin"){
                  print("user นี้มีอยู่ใน ระบบแล้ว");
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                    content: Text('user นี้มีอยู่ใน ระบบแล้ว'),
                    duration: Duration(seconds: 3),
                    )
                  );
                }else if(_pass != _pass2){
                  print("$_pass = $_pass2");
                  print("password ของท่านไม่ตรงกัน");
                  _scaffoldKey.currentState.showSnackBar(
                    SnackBar(
                    content: Text('password ของท่านไม่ตรงกัน'),
                    duration: Duration(seconds: 3),
                    )
                  );
                }else{
                  print("login");
                  Navigator.pop(context);
                }
              },
            ),
            ],
          ),
        ),
      ),
    );
  }
}