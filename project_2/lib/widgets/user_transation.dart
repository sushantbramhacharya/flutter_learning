import 'package:flutter/material.dart';
import '../models/transations.dart';
import '../widgets/new_transations.dart';
import '../widgets/transation_list.dart';
class UserTransation extends StatefulWidget {
  const UserTransation({Key key}) : super(key: key);

  @override
  State<UserTransation> createState() => _UserTransationState();
}

class _UserTransationState extends State<UserTransation> {
  final List<Transation> _userTransations=[
    Transation(id: "t1",
    title: "Shoes",
    amount: 69.99, 
    date: DateTime.now()
    ),
    Transation(id: "t2",
    title: "Weekly Groceries",
    amount: 26.99, 
    date: DateTime.now()
    )
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransations(_addNewTransation)
        ,
        TransationList(_userTransations)
      ],
    );
  }
}