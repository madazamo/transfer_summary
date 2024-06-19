import 'package:flutter/material.dart';
import 'package:flutter_test_brandon_demon/utils/constants.dart' as constants;
import '../../utils/responsive.dart';

Widget headerSummaryForm(BuildContext context) {
  final Responsive responsive = Responsive.of(context);
  final theme = Theme.of(context);

  return Column(
    children: [
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
            constants.transfer_summary,
            textAlign: TextAlign.start,
            style: theme.textTheme.headlineMedium,
          ),
        ),
      ),
      SizedBox(
        height: responsive.hp(1),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: responsive.hp(2),
        ),
        child: Container(
          alignment: Alignment.bottomLeft,
          child: Text(
            constants.confirm_details,
            textAlign: TextAlign.start,
            style: theme.textTheme.labelLarge,
          ),
        ),
      ),
      SizedBox(
        height: responsive.hp(1.0),
      )
    ],
  );
}
