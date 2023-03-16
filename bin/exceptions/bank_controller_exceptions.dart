class SenderIdInvalidException implements Exception {
  String report = "SenderIdInvalidException";
  String idSender;
  SenderIdInvalidException({required this.idSender});

  @override
  String toString() {
    return "$report\nID Sender: $idSender";
  }
}

class ReceiverIdInvalidException implements Exception {
  String idReceiver;
  ReceiverIdInvalidException({required this.idReceiver});
}

class SenderNotAuthenticatedException implements Exception {
  String idSender;
  SenderNotAuthenticatedException({required this.idSender});
}

class SenderBalanceLowerThanAmountException implements Exception {
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThanAmountException({
    required this.idSender,
    required this.senderBalance,
    required this.amount,
  });
}
