import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

void main() {

  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false, // this will hide the debug banner watermark
      theme: ThemeData(useMaterial3: true), // using Material 3 , it allows good look and feel
      home: const Expenses(),
      ),
  );
}

