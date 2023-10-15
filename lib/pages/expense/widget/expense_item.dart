import 'package:expense_tracker_app/model/expense_model.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});
  final ExpenseModel expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Text(expense.tiltle),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text('${expense.amount.toStringAsFixed(2)}\$'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(expense.fomatDate),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
