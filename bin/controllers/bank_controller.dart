import '../models/account.dart';

class bankController {
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
      return false;
    }

    // Check if idReceiver is valid
    if (!verifyId(idReceiver)) {
      return false;
    }
  }

  Account accountSender = _database[idSender]!;
  Account accountReceiver = _database[idReceiver]!;

  // Check if Sender is authenticated 
  if (!accountSender.isAuthenticated) {
    return false;
  }
  // Check if Receiver has enough value
  if (accountSender.balance < amount) {
    return false;
  }

  // If everything has been OK, so make the transfer
  accountSender.balance -= amount;
  accountReceiver.balance += amount;
  {
  return true;
  }


  bool verifyId(String id){
    return _database.containsKey(id);
  }
}