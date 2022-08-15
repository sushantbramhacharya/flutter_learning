import 'package:flutter/material.dart';
class NewTransations extends StatelessWidget {
  
  final titleController=TextEditingController();
  final amountController=TextEditingController();
  final Function addTransation;
  NewTransations(this.addTransation);
  void SubmitData()
  {
    final enteredTitle=titleController.text;
    final enteredAmount=double.parse(amountController.text);
    if(enteredAmount<=0||enteredTitle.isEmpty)
    {
      return;
    }
    addTransation(enteredTitle,double.parse(amountController.text));
  }
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
            onSubmitted: (_) => SubmitData(),
            controller: titleController
            // onChanged: (value)
            // {
            //   titleInput=value;
            // }
            ,),
            TextField(decoration: InputDecoration(
              labelText: "Amount",
            ),
            onSubmitted: (_) => SubmitData(),
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            //numberWithOptions should be enable for decimals in IOS
            controller: amountController,
            // onChanged: (value)
            // {
            //   amountInput=value;
            // }
            ),
            FlatButton(onPressed: SubmitData, child: Text("Add Transation",
            style: TextStyle(color: Colors.purple),
            ))
          ],),
        ));
  }
}