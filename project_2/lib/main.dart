// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_1/widgets/new_transations.dart';
import 'package:project_1/widgets/transation_list.dart';

import './models/transations.dart';


void main()=> runApp(MyApp());
class MyApp extends StatelessWidget
{
  @override 
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.green,
      accentColor: Colors.amber,
      fontFamily: 'Quicksand',
      appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        fontFamily: "OpenSans",
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.white
      )
      )),
      title: 'Flutter App',
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // String titleInput;
  final List<Transation> _userTransations=[
    // Transation(id: "t1",
    // title: "Shoes",
    // amount: 69.99, 
    // date: DateTime.now()
    // ),
    // Transation(id: "t2",
    // title: "Weekly Groceries",
    // amount: 26.99, 
    // date: DateTime.now()
    // )
  ];
  void _addNewTransation(String title,double amount)
  {
    final newTx = Transation(id: DateTime.now().toString(),
                  title: title, 
                  amount: amount, 
                  date: DateTime.now());
    setState(() {
      _userTransations.add(newTx);
    });
  }
  void _startAddNewTransation(BuildContext ctx)
  {
    showModalBottomSheet(context: ctx, builder: (_){
      return NewTransations(_addNewTransation);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: ()=>_startAddNewTransation(context), icon: Icon(Icons.add))
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
        _userTransations.isEmpty?Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
          padding: EdgeInsets.all(10),
          child: Text("No Transations added yet !")),
          Image.network("https://cdn-icons-png.flaticon.com/512/594/594550.png",
          scale: 8,)
        ],
      ): TransationList(_userTransations),
      ],),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),onPressed: (){
        _startAddNewTransation(context);
      },),
    );
  }
}