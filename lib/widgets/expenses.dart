import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter-Course',
        amount: 19.25,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 16.32,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  // to add new expenses
  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  // to remove the expense
  void _removeExpense(Expense expense) {
    setState(() {
      _registeredExpenses.remove(expense);
    });
  }

  // function which will be triggerd when the + icon will be pressed
  void _openAddExpenseOverlay() {
    showModalBottomSheet(
        // to provide full screen overlay
        isScrollControlled: true,
        context: context,
        builder: (ctx) => NewExpense(onAddExpense: _addExpense));
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text('No expenses found. Start adding some!'),
    );

    if(_registeredExpenses.isNotEmpty){
      mainContent = ExpensesList(
            expenses: _registeredExpenses,
            onRemoveExpense: _removeExpense,
          );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('The chart'),
          // here we need to wrap the ExpenseList widget with Expanded, as it is a list and Column widget complains that in that case
          Expanded(
              child: mainContent,
              ),
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