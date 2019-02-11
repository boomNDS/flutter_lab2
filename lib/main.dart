import 'package:flutter/material.dart';
import './ui/first_screen.dart';
import './ui/second_screen.dart';
import './ui/detail_screen.dart';
import './ui/my_custom_form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": (context) => MyCustomForm(),
        "/second": (context) => DetailScreen(title:"test"),
      },
    );
  }
}

// class MyHomePage extends StatefulWidget{
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     return MyHomePageState();
//   }

// }

// class MyHomePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return DefaultTabController(
//       length: 3, 
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Tabbar"),
//           bottom: TabBar(tabs: <Widget>[
//             Tab(
//               icon : Icon(Icons.camera),
//               text: "Camera",
//             ),
//             Tab(
//               icon : Icon(Icons.add_alarm),
//               text: "Alarm"
//             ),
//             Tab(
//               icon : Icon(Icons.account_box),
//               text: "Box"
//             )
//           ],),
//         ),
//         body: TabBarView(
//           children: <Widget>[
//             Icon(Icons.camera),
//             Icon(Icons.add_alarm),
//             Icon(Icons.account_box)
//           ],
//         ),
//       ),
//       );
//   }

// }

// class MyHomePageState extends State<MyHomePage>{
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello world..........."),
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text("$counter"),
//           Text("Value 2"),
//           Text("Value 3"),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
//       onPressed: (){
//         setState(() {
//            counter++;
//                 });
//         print("counter value $counter");
//       },
//       ),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hello world..........."),
//       ),
//       body: Text("$counter"),
//       floatingActionButton: RaisedButton(child: Icon(Icons.add),
//       onPressed: (){
//         counter++;
//         print("counter value $counter");
//       },
//       ),
//     );
//   }
// }
