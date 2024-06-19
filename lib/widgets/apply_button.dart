import 'package:flutter/material.dart';

import '../utils/responsive.dart';

Widget ApplyButton(BuildContext context, String label, Function action) {
  final Responsive _responsive = Responsive.of(context);

  return Padding(
    padding: EdgeInsets.symmetric(
      horizontal: _responsive.wp(4),
      vertical: _responsive.hp(4),
    ),
    child: InkWell(
      onTap: () {
        action();
      },
      child: Container(
        height: _responsive.hp(10.0),
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(22.0),
          ),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(127, 0, 255, 1),
              Color.fromRGBO(223, 0, 253, 1),
            ],
          ),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w700,
                fontFamily: "Sofia",
                letterSpacing: 0.9),
          ),
        ),
      ),
    ),
  );
}
