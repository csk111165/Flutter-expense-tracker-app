import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';


class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses; 
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    // ListView is better than Column
    return ListView.builder(itemCount: expenses.length, itemBuilder: (context, index) {
      // Dismissible widget allow the functionality of right/left swip to remove the content
      return Dismissible(
        // it provided the item that will be removed otherwise it won't know which to remove
        key: ValueKey(expenses[index]),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(expenses[index])
        ) ;

    });
  }
}