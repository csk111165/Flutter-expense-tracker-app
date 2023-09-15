
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter =  DateFormat.yMd(); // comes with intl package


// it will provide new uuid for each new expense we need to vall uuid.v4()
const  uuid = Uuid();

// defining the enum of category
enum Category {
  food, 
  travel,
  leisure,
  work,
}

// defining the map of icons related to each category
const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};



class Expense {

  // id is not required field as it will be generated at runtime.

  Expense({required this.title, required this.amount, required this.date, required this.category}) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;


  // defining the getter
  String get formattedDate {
    return formatter.format(date);
  }

}