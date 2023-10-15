// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

var formatter = DateFormat.yMd();
const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class ExpenseModel {
  final String id;
  final String tiltle;
  final double amount;
  final DateTime date;
  final Category category;

  ExpenseModel({
    required this.tiltle,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  String get fomatDate {
    return formatter.format(date);
  }
}
