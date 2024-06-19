import 'package:flutter/material.dart';
import 'package:flutter_test_brandon_demon/screens/transfer_summary/transfer_summary_form.dart';
import 'package:flutter_test_brandon_demon/utils/responsive.dart';
import 'package:flutter_test_brandon_demon/widgets/app_bar/custom_app_bar.dart';

class TransferSumaryScreen extends StatelessWidget {
  TransferSumaryScreen({super.key});

  Responsive? responsive;

  @override
  Widget build(BuildContext context) {
    responsive = Responsive.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildHeader(context, responsive),
        body: Container(
          height: responsive?.hp(100),
          width: responsive?.wp(100),
          child: Container(
            margin: EdgeInsets.only(
                top: responsive != null ? responsive!.hp(1.0) : 4),
            padding: EdgeInsets.symmetric(
                horizontal: responsive != null ? responsive!.hp(0.2) : 16),
            child: TransferSummaryForm(),
          ),
        ),
      ),
    );
  }
}

PreferredSizeWidget _buildHeader(BuildContext context, Responsive? responsive) {
  return customAppBar(
    responsive: responsive,
    height: responsive?.hp(8) ?? 20,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back_ios_new_outlined,
        color: Colors.white,
        size: responsive?.dp(2),
      ),
      onPressed: () {},
    ),
    leadingWidth: 50,
  );
}
