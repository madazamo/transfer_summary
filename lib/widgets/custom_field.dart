import 'package:flutter/material.dart';
import '../utils/responsive.dart';

Widget customField(
  BuildContext context,
  TextInputType type,
  String labelText,
  Function action,
) {
  final Responsive _responsive = Responsive.of(context);
  final theme = Theme.of(context);

  return ListTile(
    title: Padding(
      padding: EdgeInsets.symmetric(vertical: _responsive.hp(1.5)),
      child: Text(
        labelText,
        style: theme.textTheme.labelLarge,
      ),
    ),
    subtitle: TextFormField(
      onChanged: (value) => action(value),
      keyboardType: type,
      decoration: InputDecoration(
        prefix: type.signed != null && type.signed == true
            ? const Text(
                "\$",
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
              )
            : const Text(""),
        border: theme.inputDecorationTheme.border,
      ),
    ),
  );
}
