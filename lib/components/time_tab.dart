import 'package:finance_app/resources/app_colors.dart';
import 'package:flutter/material.dart';

class TimeTab extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onTap;

  const TimeTab({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: isSelected
          ? Container(
              padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 4),
              decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.circular(5)),
              child: Text(
                text,
                style: const TextStyle(
                    color: AppColors.defaultTextColor,
                    fontWeight: FontWeight.w600),
              ),
            )
          : Text(
              text,
              style: const TextStyle(
                  color: AppColors.defaultTextColor,
                  fontWeight: FontWeight.w600),
            ),
    );
  }
}
