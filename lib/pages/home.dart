// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  Jaguar createState() => Jaguar();
}
class Jaguar extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: <Widget>[ContainerWithBoxDecorationWidget()],
            ),
          )),
        ),
      ),
    );
  }
}

class ContainerWithBoxDecorationWidget extends StatelessWidget {
  const ContainerWithBoxDecorationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(   
          height: 175.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(100.0)
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.lightGreen.shade500
              ]
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0)
              ),
            ],
          ), 
          child: Center(
            child: Text("Ruby"),
          ),  
        )
      ],
    );
  }
}
