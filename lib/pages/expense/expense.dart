import 'package:expense_tracker_app/model/expense_model.dart';
import 'package:expense_tracker_app/pages/expense/new_expense.dart';
import 'package:expense_tracker_app/pages/expense/widget/expense_list.dart';
import 'package:flutter/material.dart';

class ExpenseSrceen extends StatefulWidget {
  const ExpenseSrceen({super.key});

  @override
  State<ExpenseSrceen> createState() => _ExpenseSrceenState();
}

class _ExpenseSrceenState extends State<ExpenseSrceen> {
  final List<ExpenseModel> _registerExpense = [
    ExpenseModel(
      tiltle: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    ExpenseModel(
      tiltle: 'Sapa Travel',
      amount: 50.99,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];
  void _openAddExpenseOverplay() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const NewExpense();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Expense Tracker',
        ),
        actions: [
          IconButton(
            onPressed: () {
              _openAddExpenseOverplay();
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: ExpenseList(
        listExpense: _registerExpense,
      ),
    );
  }
}
