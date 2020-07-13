import 'package:currencyApp/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<UserTransactions> {
  final List<Transaction> _usertransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 75.6,
      date: DateTime.now(),
    ),
    Transaction(
        id: 't1', title: 'New Socks', amount: 15.6, date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        title: txTitle,
        amount: txAmount,
        date: DateTime.now(),
        id: DateTime.now().toString());
    setState(() {
      _usertransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      //TransactionList(_usertransactions),
    ]);
  }
}
