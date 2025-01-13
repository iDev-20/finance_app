import 'package:finance_app/resources/app_colors.dart';
import 'package:flutter/material.dart';

class AppSectionContainer extends StatelessWidget {
  const AppSectionContainer({
    super.key,
    required this.child,
    this.borderRadius,
    this.left,
    this.top,
    this.right,
    this.bottom,
  });

  final Widget child;
  final double? borderRadius;
  final double? left;
  final double? top;
  final double? right;
  final double? bottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: left ?? 11,
          top: top ?? 12,
          right: right ?? 13,
          bottom: bottom ?? 12),
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
      ),
      child: child,
    );
  }
}
