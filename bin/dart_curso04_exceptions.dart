import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  //Creating the bank
  BankController bankController = BankController();

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
  try{
    bool result = bankController.makeTransfer(idSender: "eueu", idReceiver: "Elon", amount: 200);
    //Watching result
    print(result);
    } on SenderIdInvalidException catch (e){
      print("O ID '${e.idSender}' do remetente não é válido");
  }



  try {
    bool result = bankController.makeTransfer(
        idSender: "Digo", idReceiver: "Elon", amount: 200);

    //Watching result
    print(result);
    } on SenderIdInvalidException catch (e) {
      print("O ID remetente '${e.idSender}' não é válido");

    } on ReceiverIdInvalidException catch (e) {
      print("O ID remetente '${e.idReceiver}' não é válido");

    } on SenderBalanceLowerThanAmountException catch (e) {
      print("O usuário ID remetente '${e.idSender}' não está autenticado ");    
  }
}
