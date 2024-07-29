import 'package:personal_budget_planner/transacation_type.dart';

class Transacation {
  final double amount;
  final String description;
  final TransactionType type;

  Transacation(
      {required this.amount, required this.description, required this.type});
}
