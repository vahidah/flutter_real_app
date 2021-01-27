import 'package:Realapp/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recenTransaction;

  Chart(this.recenTransaction);

  List<Map<String, Object>> get groupedTransaction{
    return List.generate(7, (index){
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalSum;

      for(var i = 0; i < recenTransaction.length; i++){
        if(recenTransaction[i].date.day == weekDay.day && recenTransaction[i].date.month == weekDay.month && 
        recenTransaction[i].date.year == weekDay.year){
          totalSum += recenTransaction[i].amount;
        }
      }

      print('a');
      return{
        'day': DateFormat.E(weekDay), 
        'amount': totalSum};
    } );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(children: <Widget>[

      ],)
    );
  }
}