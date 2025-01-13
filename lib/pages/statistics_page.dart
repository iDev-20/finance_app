import 'package:finance_app/resources/app_colors.dart';
import 'package:finance_app/resources/app_images.dart';
import 'package:flutter/material.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: const Icon(
          Icons.chevron_left,
          color: AppColors.defaultTextColor,
        ),
        title: const Text(
          'Statistics',
          style: TextStyle(
              color: AppColors.defaultTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: AppImages.svgStatisticsIcon,
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 12),
            const Text(
              '\$12,346',
              style: TextStyle(
                  color: AppColors.defaultTextColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppImages.svgCircleArrowIcon,
                const SizedBox(width: 5),
                const Text(
                  'Increase of 51% from last month',
                  style: TextStyle(
                    color: AppColors.defaultTextColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 29),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                timeSelection(selected: false, text: 'Day'),
                timeSelection(selected: false, text: 'Week'),
                timeSelection(selected: true, text: 'Month'),
                timeSelection(selected: false, text: 'Year'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 36),
              child: Column(
                children: [
                  Image(image: AppImages.statistics),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget timeSelection({required bool selected, required String text}) {
    return selected
        ? Container(
            padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 4),
            decoration: BoxDecoration(
                color: AppColors.blue, borderRadius: BorderRadius.circular(5)),
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
                color: AppColors.defaultTextColor, fontWeight: FontWeight.w600),
          );
  }
}
