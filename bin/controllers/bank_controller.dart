import '../models/account.dart';
import '../exceptions/bank_controller_exceptions.dart';

class BankController {
  final Map<String, Account> _database = {};

  addAccount({required String id, required Account account}) {
    _database[id] = account;
  }

  bool makeTransfer(
      {required String idSender,
      required String idReceiver,
      required double amount}) {
    // Check if idSender is valid
    if (!verifyId(idSender)) {
      throw SenderIdInvalidException(idSender: idSender);
    }

    // Check if idReceiver is valid
    if (!verifyId(idReceiver)) {
      throw ReceiverIdInvalidException(idReceiver: idReceiver);
    }
  

  Account accountSender = _database[idSender]!;
  Account accountReceiver = _database[idReceiver]!;

  // Check if Sender is authenticated 
  if (!accountSender.isAuthenticated) {
    throw SenderNotAuthenticatedException(idSender: idSender);
  }
  // Check if Receiver has enough value
  if (accountSender.balance < amount) {
    throw SenderBalanceLowerThanAmountException();
  }

  // If everything has been OK, so make the transfer
  accountSender.balance -= amount;
  accountReceiver.balance += amount;
  
  return true;
  }


  bool verifyId(String id){
    return _database.containsKey(id);
  }
}