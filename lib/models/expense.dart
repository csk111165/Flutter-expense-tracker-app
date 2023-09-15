
import 'package:uuid/uuid.dart';

// it will provide new uuid for each new expense we need to vall uuid.v4()
const  uuid = Uuid();

enum Category {
  food, 
  travel,
  leisure,
  work,
}

class Expense {

  // id is not required field as it will be generated at runtime.

  Expense({required this.title, required this.amount, required this.date, required this.category}) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

}