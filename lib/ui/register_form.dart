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
                  labelText: "User ID",
                  hintText:  "Please input your ID",
                  icon: Icon(Icons.person),
                ),
                keyboardType: TextInputType.text,
                onSaved: (value) => print(value),
                validator: (value){
                  if(value.isEmpty){
                    return "Please input value";
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
              TextFormField(
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Please input your password again",
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
                if(_formKey.currentState.validate()){
                  print("validate");
                  Scaffold.of(context)
                  .showSnackBar(SnackBar(content: Text("Processing Data")));
                }else{
                  print("not validate");
                  Navigator.pushNamed(context, "/login");
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