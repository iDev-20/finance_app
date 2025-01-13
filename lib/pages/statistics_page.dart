import 'package:finance_app/components/date_time_extensions.dart';
import 'package:finance_app/components/time_tab.dart';
import 'package:finance_app/components/ui_models.dart';
import 'package:finance_app/resources/app_colors.dart';
import 'package:finance_app/resources/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  int? selectedIndex = 0;

  List<String> time = [
    'Day',
    'Week',
    'Month',
    'Year',
  ];

  List<Transactions> transactions = [
    Transactions(icon: AppImages.svgMusicIcon, amount: '+ \$212.00'),
    Transactions(icon: AppImages.svgMovieRecordingIcon, amount: '+ \$468.00'),
    Transactions(icon: AppImages.svgMovieIcon, amount: '- \$642.00'),
  ];
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
              children: List.generate(
                time.length,
                (index) => TimeTab(
                  text: time[index],
                  isSelected: selectedIndex == index,
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 20, 25, 36),
              child: Column(
                children: [
                  Image(image: AppImages.statistics),
                  const SizedBox(height: 24),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 15, top: 18, right: 15),
                    decoration: BoxDecoration(
                      color: AppColors.containerColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Upcoming Payment',
                          style: TextStyle(
                              color: AppColors.defaultTextColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 21),
                        ...(transactions).map(
                          (e) => transaction(transactions: e),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget transaction({required Transactions transactions}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
            color: const Color(0xFF373737),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                iconContainer(icon: transactions.icon),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'My Brand',
                      style: TextStyle(
                          color: AppColors.defaultTextColor,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      'Today, ${DateTime.now().friendlyDate()}',
                      style: const TextStyle(
                          color: Color(0xFF969696), fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              transactions.amount,
              style: const TextStyle(
                  color: AppColors.defaultTextColor,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconContainer({required SvgPicture icon}) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration:
          const BoxDecoration(color: Color(0xFF373737), shape: BoxShape.circle),
      child: icon,
    );
  }
}
