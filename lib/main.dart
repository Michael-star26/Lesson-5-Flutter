// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors
import 'pages/home.dart';
import 'package:flutter/material.dart';
void main() => runApp(Jaguar());
class Jaguar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Jaguar",
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home:Scaffold(
         appBar: AppBar(
        title: Text("Jaguar"),
        leading: IconButton(onPressed: (){},
        icon: Icon(Icons.menu)),
        actions:<Widget> [
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.search)),
          IconButton(onPressed: (){},
          icon: Icon(Icons.more_vert)),
        ],
        flexibleSpace:
        SafeArea(
          child: Icon(
            Icons.photo_camera,
            size: 70.0,
            color: Colors.cyan,),
            ),
            bottom: 
            PreferredSize(
            child:Container(
              color: Colors.lightGreen.shade100,
              height: 75.0,
              width: double.infinity,
              child: Center(
                child: Text("Bottom"),
              ),
            ),
            preferredSize: Size.fromHeight(75),
            ),
         ),
        body: Home(),
      )
    );
  }
}
