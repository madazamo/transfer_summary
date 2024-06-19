import 'package:flutter/material.dart';

Widget checkBoxCustom(BuildContext context, String tag, Function action) {
  final theme = Theme.of(context);

  return ListTileTheme(
    horizontalTitleGap: 0.5,
    child: CheckboxListTile(
      title: Text(tag),
      value: false,
      onChanged: action(),
      controlAffinity: ListTileControlAffinity.leading,
    ),
  );
}
