import 'controllers/bank_controller.dart';
import 'models/account.dart';

void main() {
  // Creating the bank
  BankController bankController = BankController();

  // Add account
  bankController.addAccount(
      id: "Elon",
      account:
          Account(name: "Elon Musgo", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Digo",
      account:
          Account(name: "Diego Rosa", balance: 600, isAuthenticated: true));

  // Making transfer
  bool result = bankController.makeTransfer(
      idSender: "Digo", idReceiver: "Elon", amount: 700);

  // Watching result
  print(result);
}
