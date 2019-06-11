import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeWidgetState();
  }
}

class HomeWidgetState extends State<HomeWidget> {

  @override
  Widget build(BuildContext context) {
 
    return StreamBuilder(
      stream: Firestore.instance.collection('nombres').snapshots(),
      builder: (context,snapshot){
        return Text(snapshot.data.document['nombre']);
      },
    );
  }
}
