import 'package:flutter/material.dart';
class NewTransations extends StatefulWidget {
  
  final Function addTransation;
  NewTransations(this.addTransation);

  @override
  State<NewTransations> createState() => _NewTransationsState();
}

class _NewTransationsState extends State<NewTransations> {
  final titleController=TextEditingController();

  final amountController=TextEditingController();

  void SubmitData()
  {
    final enteredTitle=titleController.text;
    final enteredAmount=double.parse(amountController.text);
    if(enteredAmount<=0||enteredTitle.isEmpty)
    {
      return;
    }
    widget.addTransation(enteredTitle,double.parse(amountController.text));
    //widget. to access function from widget class
    Navigator.of(context).pop();
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