import 'package:personal_budget_planner/transacation.dart';
import 'package:personal_budget_planner/transacation_type.dart';

class Budget {
  List<Transacation> expenses = [];
  List<Transacation> income = [];

  void addTransaction(Transacation transaction) {
    if (transaction.type == TransactionType.income) {
      income.add(transaction);
    } else {
      expenses.add(transaction);
    }
  }

  double totalIncome() {
    double total = 0;
    for (var transaction in income) {
      total += transaction.amount;
    }
    return total;
  }

  double totalExpenses() {
    double total = 0;
    for (var transaction in expenses) {
      total += transaction.amount;
    }
    return total;
  }

  double getBalance() {
    return totalIncome() - totalExpenses();
  }

  void displaySummary() {
    print('Income:');
    for (var transaction in income) {
      print('${transaction.description}: \$${transaction.amount}');
    }
    print('Total Income: \$${totalIncome()}\n');

    print('Expenses:');
    for (var transaction in expenses) {
      print('${transaction.description}: \$${transaction.amount}');
    }
    print('Total Expenses: \$${totalExpenses()}\n');

    print('Balance: \$${getBalance()}');
  }
}
