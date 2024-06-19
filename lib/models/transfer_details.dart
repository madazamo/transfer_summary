import '../utils/date_utils.dart';

class TransferDetails {
  final double? amount;
  final String? bankName;
  final String? accountHolderName;
  final int? accountNumber;
  final String? date;
  final String? time;
  final String? transactionId;
  final String? destinationAccount;
  final bool? sendDigitalReceiptByEmail;

  TransferDetails({
    this.amount,
    this.bankName,
    this.accountHolderName,
    this.accountNumber,
    this.date,
    this.time,
    this.transactionId,
    this.destinationAccount,
    this.sendDigitalReceiptByEmail,
  });

  TransferDetails copyWith({
    double? amount,
    String? bankName,
    String? accountHolderName,
    int? accountNumber,
    String? date,
    String? time,
    String? transactionId,
    String? destinationAccount,
    bool? sendDigitalReceiptByEmail,
  }) {
    return TransferDetails(
      amount: amount ?? this.amount,
      bankName: bankName ?? this.bankName,
      accountHolderName: accountHolderName ?? this.accountHolderName,
      accountNumber: accountNumber ?? this.accountNumber,
      date: date ?? this.date,
      time: time ?? this.time,
      transactionId: transactionId ?? this.transactionId,
      destinationAccount: destinationAccount ?? this.destinationAccount,
      sendDigitalReceiptByEmail:
          sendDigitalReceiptByEmail ?? this.sendDigitalReceiptByEmail,
    );
  }

  @override
  String toString() {
    return 'amount:$amount, bankName:${bankName!}, accountHolderName:${accountHolderName!}, accountNumber:$accountNumber, date:${date!}, time:${time!}, transactionId:${transactionId!}, destinationAccount:${destinationAccount!}';
  }

  TransferDetails getNewTransferDetail() {
    return TransferDetails(
      amount: 0,
      bankName: "",
      accountHolderName: "",
      accountNumber: 0,
      date: DateUtils.dayFormat(DateUtils.getDateNow()),
      time: DateUtils.timeFormat(DateUtils.getDateNow()),
      transactionId: "TID3872XG9",
      destinationAccount: "1234567890123456",
      sendDigitalReceiptByEmail: false,
    );
  }
}
