import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpeneseItem extends StatelessWidget {
  const ExpeneseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(expense.title,
                  style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(
                height: 4.0,
              ),
              Row(
                children: [
                  Text('\$${expense.amount.toStringAsFixed(2)}'),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(categoryIcons[expense.category]),
                      const SizedBox(
                        width: 8.0,
                      ),
                      Text(expense.formattedDate)
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
