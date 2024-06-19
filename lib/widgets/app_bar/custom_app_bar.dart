import 'package:flutter/material.dart';
import 'package:flutter_test_brandon_demon/utils/responsive.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? height;
  final double? leadingWidth;
  final Widget? leading;
  final Widget? title;
  final bool? centerTitle;
  final List<Widget>? actions;
  final Responsive? responsive;

  const customAppBar(
      {this.height,
      this.leadingWidth,
      this.leading,
      this.title,
      this.centerTitle,
      this.actions,
      this.responsive});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      toolbarHeight:
          (height != null && responsive != null) ? responsive?.wp(height!) : 56,
      backgroundColor: Colors.transparent,
      leadingWidth: leadingWidth ?? 0,
      leading: Padding(
        padding: EdgeInsets.all(responsive?.hp(3) ?? 4),
        child: leading,
      ),
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize {
    return Size(responsive?.wp(100) ?? 100, height ?? responsive!.hp(56));
  }
}
