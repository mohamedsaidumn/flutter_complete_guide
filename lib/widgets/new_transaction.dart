import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  String titleInput;
  String amountInput;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (val) {
                titleInput = val;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              onChanged: (val) {
                amountInput = val;
              },
            ),
            ElevatedButton(
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple),
              ),
              onPressed: () {
                addTx(
                  titleInput,
                  double.parse(amountInput),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
