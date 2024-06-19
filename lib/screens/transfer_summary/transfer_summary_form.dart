import 'package:flutter/material.dart';
import 'package:flutter_test_brandon_demon/controllers/transfer_summary_controller.dart';
import 'package:flutter_test_brandon_demon/models/transfer_details.dart';
import 'package:flutter_test_brandon_demon/screens/transfer_summary/header_summary_form.dart';
import 'package:flutter_test_brandon_demon/utils/constants.dart' as constants;
import 'package:flutter_test_brandon_demon/utils/responsive.dart';
import '../../widgets/apply_button.dart';
import '../../widgets/checkbox_custom.dart';
import '../../widgets/custom_field.dart';
import '../../widgets/item_digital_receipt.dart';

class TransferSummaryForm extends StatefulWidget {
  @override
  State<TransferSummaryForm> createState() => _TransferSummaryFormState();
}

class _TransferSummaryFormState extends State<TransferSummaryForm> {
  late final _formKey;
  late final TransferSummaryController _transferSummaryController;
  late TransferDetails _transferDetails;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey<FormState>();
    _transferDetails = TransferDetails().getNewTransferDetail();
    _transferSummaryController =
        TransferSummaryController(this.widget, _transferDetails);
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final theme = Theme.of(context);

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            headerSummaryForm(context),
            customField(
              context,
              TextInputType.numberWithOptions(signed: true),
              constants.amount_to_redeem,
              (value) {
                _transferSummaryController.updateTransferDetails(
                  _transferSummaryController.transferDetails.copyWith(
                    amount: double.parse(value),
                  ),
                );
              },
            ),
            SizedBox(
              height: responsive.hp(1.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: Container(
                    width: responsive.wp(49),
                    child: customField(
                      context,
                      TextInputType.name,
                      constants.bank_name,
                      (value) {
                        _transferSummaryController.updateTransferDetails(
                          _transferSummaryController.transferDetails.copyWith(
                            bankName: value,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    width: responsive.wp(49),
                    child: customField(
                      context,
                      TextInputType.name,
                      constants.account_holder_name,
                      (value) {
                        _transferSummaryController.updateTransferDetails(
                          _transferSummaryController.transferDetails.copyWith(
                            accountHolderName: value,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: responsive.hp(1.0),
            ),
            customField(
              context,
              TextInputType.numberWithOptions(signed: false),
              constants.account_number,
              (value) {
                _transferSummaryController.updateTransferDetails(
                  _transferSummaryController.transferDetails.copyWith(
                    accountNumber: int.parse(value),
                  ),
                );
              },
            ),
            SizedBox(
              height: responsive.hp(5),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: responsive.hp(2),
              ),
              child: Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  constants.digital_receipt,
                  textAlign: TextAlign.start,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ),
            SizedBox(height: responsive.hp(2)),
            itemDigitalReceipt(context, constants.date_digital_receipt,
                _transferDetails.date ?? ""),
            itemDigitalReceipt(context, constants.time_digital_receipt,
                _transferDetails.time ?? ""),
            itemDigitalReceipt(
                context,
                constants.transaction_id_digital_receipt,
                _transferDetails.transactionId ?? ""),
            itemDigitalReceipt(context, constants.amount_digital_receipt,
                _transferDetails.amount.toString() ?? ""),
            itemDigitalReceipt(
                context,
                constants.destination_account_digital_receipt,
                _transferDetails.destinationAccount ?? ""),
            checkBoxCustom(context, constants.email_digital_receipt, () {
              _transferSummaryController.toggleSendDigitalReceiptByEmail();
            }),
            ApplyButton(
              context,
              constants.confirm_digital_receipt,
              () {
                _transferDetails = _transferSummaryController.transferDetails;
                _transferSummaryController
                    .sendTransferDetails(_transferDetails);
              },
            ),
          ],
        ),
      ),
    );
  }
}
