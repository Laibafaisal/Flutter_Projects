import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category{ food, leisure, work, travel} //no quotes so these values are
// not strings but are treated as such by dart

class ExpenseModel {

  ExpenseModel({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
}) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}