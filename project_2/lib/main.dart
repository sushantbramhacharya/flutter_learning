// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_1/widgets/user_transation.dart';


void main()=> runApp(MyApp());
class MyApp extends StatelessWidget
{
  @override 
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home:MyHomePage(),
      title: 'Flutter App',
    );
  }
}
class MyHomePage extends StatelessWidget {
  // String titleInput;
  // String amountInput;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Card(
          color: Colors.blue,
          child: Container(
            width: double.infinity,
            child: Text("Chart")
            ),
          elevation: 5,
        ),
        UserTransation()
      ],)
    );
  }
}