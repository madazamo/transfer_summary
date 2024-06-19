import 'package:flutter/material.dart';
import 'package:flutter_test_brandon_demon/utils/responsive.dart';

Widget itemDigitalReceipt(BuildContext context, String tag, String value) {
  final Responsive _responsive = Responsive.of(context);
  final theme = Theme.of(context);

  return Padding(
    padding: EdgeInsets.symmetric(
        horizontal: _responsive.wp(4), vertical: _responsive.hp(2)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(style: theme.textTheme.labelMedium, tag),
        Text(style: theme.textTheme.labelLarge, value)
      ],
    ),
  );
}
