import 'package:flutter/material.dart';
import 'package:mod5/model.dart';
import 'package:mod5/widgets/expenses.dart';

class ExpenseItem extends StatelessWidget{

  const ExpenseItem (this.expense, {super.key});
  final ExpenseModel expense;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16
      ),
      child: Card(
        child: Text(expense.title)
      ),
    );
  }
}