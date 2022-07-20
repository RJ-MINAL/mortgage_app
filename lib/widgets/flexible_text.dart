import 'package:flutter/material.dart';
import 'package:mortgage_app/themes/app_theme.dart';

class FlexibleText extends StatelessWidget {
  final String label;
  final Color? color;
  final double? size;
  final bool? bold;

  const FlexibleText(
      {super.key, this.size, required this.label, this.color, this.bold});

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle = TextStyle(
        color: color ?? AppTheme.fontColor,
        fontSize: size ?? 15,
        fontWeight: bold == null ? FontWeight.normal : FontWeight.bold);

    return Flexible(
      child: Text(label,
          maxLines: 2, overflow: TextOverflow.ellipsis, style: textStyle),
    );
  }
}
