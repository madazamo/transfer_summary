import 'package:flutter_test_brandon_demon/models/transfer_details.dart';
import 'package:flutter_test_brandon_demon/screens/transfer_summary/transfer_summary_form.dart';

class TransferSummaryController {
  TransferSummaryController(this._transferSummaryForm, this._transferDetails);

  TransferSummaryForm _transferSummaryForm;
  TransferDetails _transferDetails;
  bool _sendDigitalReceiptByEmail = false;

  TransferDetails get transferDetails => _transferDetails;

  bool get sendDigitalReceiptByEmail => _sendDigitalReceiptByEmail;

  void sendTransferDetails(TransferDetails transferDetails) {
    _transferDetails = transferDetails;
    print(
      _transferDetails.toString(),
    );
  }

  void updateTransferDetails(TransferDetails transferDetails) {
    _transferDetails = transferDetails;
  }

  void toggleSendDigitalReceiptByEmail() {
    transferDetails.copyWith(
        sendDigitalReceiptByEmail:
            transferDetails.sendDigitalReceiptByEmail != null
                ? !transferDetails.sendDigitalReceiptByEmail!
                : false);
  }
}
