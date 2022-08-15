import 'package:flutter/material.dart';
import '../models/transations.dart';
import 'package:intl/intl.dart';

class TransationList extends StatelessWidget {
  final List<Transation> _transations;
  TransationList(this._transations);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
            children: [
              ..._transations.map((transation) {
                return Card(child: Row(children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2)
                    ),
                    child:Text(
                      "\$${transation.amount.toString()}",
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,color: Colors.purple),
                    )
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(transation.title,
                      style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold),),
                      Text(DateFormat('dd MMM yyyy').format(transation.date),
                      style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),)
                    ],
                  )
                ],)
                );
              } ).toList()
            ],
          ),
    );
  }
}