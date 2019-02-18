import 'package:flutter/material.dart';
import './detail_screen.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class FirstScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FirstScreenState();
  }
 
}
class FirstScreenState extends State{
  List<String> _passengers = <String>["","1","2","3","4","5"];
  String _passenger = "1";
 @override
  Widget build(BuildContext context){
    // TODO: implement createState
    DateTime date;
        return Scaffold(
          appBar: AppBar(
            title:  Text("First Screen"),
          ),
          body: Form(
            child: ListView(
              children: <Widget>[
                InputDecorator(
                  decoration: InputDecoration(
                    icon: Icon(Icons.people),
                    labelText:  "Passenger"
                  ),
                  isEmpty: _passenger == "",
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      value: _passenger,
                      isDense: true,
                      onChanged: (value){
                        setState(() {
                        _passenger = value;                            
                          });
                      },
                      items: _passengers.map((String value){
                        return DropdownMenuItem(
                          child: Text(value),
                          value: value,
                        );
                      }).toList(),
                    ),
                  ),
                ),
                DateTimePickerFormField(
                  inputType: InputType.date,
                  initialDate: DateTime.now(),
                  format: DateFormat("yyyy-mm-dd"),
                  decoration: InputDecoration(labelText: "Date"),
            ),
          ],
          ),
      )
    );
  }
}