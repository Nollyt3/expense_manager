import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:expense_manager_nolan_turin/models/expense_model.dart';

class DashboardPage extends StatelessWidget {
  String getStringDate(DateTime dt) {
    return "${dt.year}/${dt.month}/${dt.day}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
            padding: EdgeInsets.all(12.0),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    getStringDate(DateTime.now()),
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward),
                ),
              ],
            ))
      ]),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add)
      ),
    );
  }
}
Widget _getExpenses() {
  var expense1 = ExpenseModel().rebuild((b) => b
    ..id = 1
    ..title = "Coffee"
    ..notes = "Coffee at peepalbot"
    ..amount = 129.00);

  var expense2 = ExpenseModel().rebuild((b) => b
    ..id = 2
    ..title = "Lunch"
    ..notes = "Momos at dilli bazar"
    ..amount = 150.00);

  var expense3 = ExpenseModel().rebuild((b) => b
    ..id = 3
    ..title = "Pants"
    ..notes = "Bought a pair of pants from Dbmg"
    ..amount = 2500.00);

  var ls = [expense1, expense2, expense3];

  return ListView.builder(
    itemCount: ls.length,
    itemBuilder: (context, index) {

      var expense = ls[index];
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            border: new Border.all(
                width: 1.0, style: BorderStyle.solid, color: Colors.white)),
        margin: EdgeInsets.all(12.0),
        child: ListTile(
          onTap: () {},
          trailing: IconButton(
            icon: Icon(Icons.delete),
            color: Theme.of(context).primaryColorLight,
            onPressed: () {},
          ),
          title: Text(
            expense.title + " - Rs." + expense.amount.toString(),
            style: Theme.of(context)
                .textTheme
                .body2
                .copyWith(color: Theme.of(context).accentColor),
          ),
          subtitle: Text(
            expense.notes,
          ),
        ),
      );
    },
  );
