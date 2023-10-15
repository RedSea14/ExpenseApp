import 'package:expense_tracker_app/model/expense_model.dart';
import 'package:expense_tracker_app/pages/expense/widget/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  ExpenseList({super.key, required this.listExpense});
  List<ExpenseModel> listExpense = [];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listExpense.length,
      itemBuilder: (context, index) {
        return ExpenseItem(expense: listExpense[index]);
      },
    );
  }
}
