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
      debugShowCheckedModeBanner: false,
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
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add))
        ],
        title: Text("Flutter App"),
      ),
      body: ListView(
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
      ],),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){},),
    );
  }
}