import 'package:flutter/material.dart';
import 'package:mod5/widgets/expenses_list/expenses_list.dart';
import 'package:mod5/model.dart';

class Expenses extends StatefulWidget{

  const Expenses({super.key});

  @override
  State <Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses>{

  final List<ExpenseModel> _registeredExpenses = [
    ExpenseModel(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work,
    ),
    ExpenseModel(
      title: 'Chinese',
      amount: 299.9,
      date: DateTime.now(),
      category: Category.food,
    ),
    ExpenseModel(
      title: 'Cinema',
      amount: 200,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Hi'),
          Expanded
            (child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}