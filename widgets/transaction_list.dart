import 'package:currencyApp/widgets/user_transactions.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';
import './user_transactions.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 510,
      child: ListView.builder(
        itemBuilder: (ctx, index) {
          return Card(
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      //color: Colors.purple,
                      color: Theme.of(context).primaryColorDark,
                      width: 3,
                    ),
                  ),
                  padding: EdgeInsets.all(15),
                  child: Text(
                    transactions[index].amount.toStringAsFixed(2) + ' ' + '\$',
                    //'\$${tx.amount}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      // color: Colors.purple,
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                ),
                Column(children: <Widget>[
                  Text(
                    transactions[index].title,
                    style: Theme.of(context).textTheme.title,
                  ),
                  //Text(tx.id),
                  Text(
                    //tx.date.toString(),
                    //DateFormat('h:m:s').format(tx.date),
                    DateFormat.yMMMMd().format(transactions[index].date),
                    style: Theme.of(context).textTheme.title,
                  ),
                ]),
              ],
            ),
          );
        },
        itemCount: transactions.length,
        // children: transactions.map((tx) {
      ),
    );
  }
}
