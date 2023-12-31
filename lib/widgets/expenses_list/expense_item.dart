import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expense.title, style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: 4),
            Row(
              children: [
                // display like $12.23; {expense.amount.toStringAsFixed(2)} is string interpolation
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(), // Spacer takes the whole space and pushing the next widget to pushed to right
                Row(
                  children: [
                    Icon(categoryIcons[expense
                        .category]), // since key is of type cathegory in categoryIcons
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expense.formattedDate),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*
* Padding is not provided as default in Card, so in this case we are wrapping our Text widget with Padding to give some padding around the card to look good

 */