import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void testingNullSafety() {
  Account? myAccount;

  //Simulating external communication
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if (randomNumber <= 5) {
    myAccount = Account(name: "Digo", balance: 251, isAuthenticated: true);
  }

  //if (myAccount != null) {
  //  print(myAccount.balance);
  //} else {
  //  print("Conta nula");
  //}

  print(myAccount != null ? myAccount.balance : "Conta nula");
}

void main() {
  testingNullSafety();

  //Creating the bank
  BankController bankController = BankController();

  // Account accountTest = Account(name: "", balance: 200, isAuthenticated: true);

  //Add account
  bankController.addAccount(
      id: "Elon",
      account:
          Account(name: "Elon Musgo", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Digo",
      account:
          Account(name: "Diego Rosa", balance: 600, isAuthenticated: true));

  //Making transfer
  try {
    bool result = bankController.makeTransfer(
        idSender: "Digo", idReceiver: "Elon", amount: 1500);

    //Watching result
    if (result) {
      print("Transação realizada!");
    }
  } on SenderIdInvalidException catch (e) {
    print(e);
    print("O ID '${e.idSender}' do remetente não é válido.");
    // ignore: dead_code_on_catch_subtype
  } on SenderIdInvalidException catch (e) {
    print(e);
    print("O ID remetente '${e.idSender}' não é válido.");
  } on ReceiverIdInvalidException catch (e) {
    print(e);
    print("O ID remetente '${e.idReceiver}' não é válido.");
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print(
        "O usuário ID '${e.idSender}' tentou enviar ${e.amount}, porém o saldo é ${e.senderBalance}.");
  } on Exception {
    print("Erro na transação");
  }
}

/*void main2() {
  print("MyString".runtimeType);
  print(null.runtimeType);
  Null;

  String naoRolaSerNulo = "MyString";
  //naoRolaSerNulo = null;

  String? podeSerNulo = "MyString";
  print(podeSerNulo.runtimeType);
  podeSerNulo = null;
  print(podeSerNulo.runtimeType);
}*/
