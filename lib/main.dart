import 'package:personal_budget_planner/budget.dart';
import 'package:personal_budget_planner/transacation.dart';
import 'package:personal_budget_planner/transacation_type.dart';

void main() {
  var budget = Budget();

  budget.addTransaction(Transacation(
      amount: 50, description: "Salary", type: TransactionType.income));
  budget.addTransaction(Transacation(
      amount: 70, description: "Freelance", type: TransactionType.income));

  budget.addTransaction(Transacation(
      amount: 90, description: "Rent", type: TransactionType.expense));
  budget.addTransaction(Transacation(
      amount: 20, description: "Travel", type: TransactionType.expense));

  budget.displaySummary();
}
