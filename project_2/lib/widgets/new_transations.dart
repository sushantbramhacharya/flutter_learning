import 'package:flutter/material.dart';
class NewTransations extends StatelessWidget {
  
  final titleController=TextEditingController();
  final amountController=TextEditingController();
  final Function addTransation;
  NewTransations(this.addTransation);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3,
        child:Container(
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
            TextField(decoration: InputDecoration(
              labelText: "Title",
            ),
            controller: titleController
            // onChanged: (value)
            // {
            //   titleInput=value;
            // }
            ,),
            TextField(decoration: InputDecoration(
              labelText: "Amount"
            ),
            controller: amountController,
            // onChanged: (value)
            // {
            //   amountInput=value;
            // }
            ),
            FlatButton(onPressed: (){
              addTransation(titleController.text,double.parse(amountController.text));
            }, child: Text("Add Transation",
            style: TextStyle(color: Colors.purple),
            ))
          ],),
        ));
  }
}