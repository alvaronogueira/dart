/*import 'controllers/bank_controller.dart';
import 'models/account.dart';

void main() {
 Creating the bank
  BankController bankController = BankController();

 Add account
  bankController.addAccount(
      id: "Elon",
      account:
          Account(name: "Elon Musgo", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Digo",
      account:
          Account(name: "Diego Rosa", balance: 600, isAuthenticated: true));

 Making transfer
  bool result = bankController.makeTransfer(
      idSender: "Digo", idReceiver: "Elon", amount: 700);

 Watching result
  print(result);
}
*/

void main() {
  print("Started Main");
  functionOne();
  print("Finished Main");
}

void functionOne() {
  print("Started F01");
  functionTwo();
  print("Started F02");
}

void functionTwo() {
  print("Started F02");
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse("isso é um teste");
  }
  print("Finished F02");
}
