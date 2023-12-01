import 'package:flutter/material.dart';
import 'package:mod5/model.dart';

class ExpensesList extends StatelessWidget{

  const ExpensesList({super.key, required this.expenses});

  final List<ExpenseModel> expenses;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) =>Text(expenses[index].title) );
  }
}