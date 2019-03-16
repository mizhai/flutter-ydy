import 'package:flutter/material.dart';

class BusinessPageWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new BusinessPageWidgetState();
  }
}

class BusinessPageWidgetState extends State<BusinessPageWidget>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('商业'),
      ),
      body: new Center(
        child: Icon(Icons.business,size: 130.0,color: Colors.blue,),
      ),
    );
  }
}