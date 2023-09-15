import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';


class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {

  final List<Expense> _registeredExpenses = [

    Expense(title: 'Flutter-Course', amount: 19.25, date: DateTime.now(), category: Category.work),
    Expense(title: 'Cinema', amount: 16.32, date: DateTime.now(), category: Category.leisure),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The chart'),
          // here we need to wrap the ExpenseList widget with Expanded, as it is a list and Column widget complains that in that case
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}


/* NOTES: 
 * ExpenseList is user defined widget
 * Since ExpenseList returns a list, the column widget just don't know how to render it and in that case, we need to wrap it with "Expanded" widget
 * 
 */