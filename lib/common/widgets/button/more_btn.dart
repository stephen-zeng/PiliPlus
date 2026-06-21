import 'package:get/get.dart';
import 'package:flutter/material.dart';

Widget moreTextButton({
  String? text,
  required VoidCallback onTap,
  EdgeInsets? padding,
  Color? color,
}) {
  final textVal = text ?? 'common.view_more'.tr;
  Widget child = Text.rich(
    style: TextStyle(color: color, height: 1),
    strutStyle: const StrutStyle(leading: 0, height: 1),
    TextSpan(
      children: [
        TextSpan(text: textVal),
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: Icon(
            size: 22,
            color: color,
            Icons.keyboard_arrow_right,
          ),
        ),
      ],
    ),
  );
  if (padding != null) {
    child = Padding(padding: padding, child: child);
  }
  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: onTap,
    child: child,
  );
}
