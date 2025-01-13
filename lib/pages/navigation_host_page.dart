import 'package:finance_app/pages/home_page.dart';
import 'package:finance_app/pages/send_money_page.dart';
import 'package:finance_app/pages/statistics_page.dart';
import 'package:finance_app/resources/app_colors.dart';
import 'package:flutter/material.dart';

class NavigationHostPage extends StatefulWidget {
  const NavigationHostPage({super.key});

  @override
  State<NavigationHostPage> createState() => _NavigationHostPageState();
}

class _NavigationHostPageState extends State<NavigationHostPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Expanded(child: getScreen(currentPage))],
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        color: Colors.black,
        shadowColor: Colors.black,
        surfaceTintColor: Colors.black,
        elevation: 0,
        height: 63,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              color: currentPage == 0
                  ? AppColors.defaultTextColor
                  : AppColors.containerColor,
              icon: const Icon(Icons.home),
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
            ),
            IconButton(
              color: currentPage == 1
                  ? AppColors.defaultTextColor
                  : AppColors.containerColor,
              icon: const Icon(Icons.stacked_bar_chart_rounded),
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
            ),
            IconButton(
              color: currentPage == 2
                  ? AppColors.defaultTextColor
                  : AppColors.containerColor,
              icon: const Icon(Icons.person),
              onPressed: () {
                setState(() {
                  currentPage = 2;
                });
              },
            ),
            IconButton(
              color: currentPage == 3
                  ? AppColors.defaultTextColor
                  : AppColors.containerColor,
              icon: const Icon(Icons.account_balance_wallet_outlined),
              onPressed: () {
                setState(() {
                  currentPage = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget getScreen(int value) {
    switch (value) {
      case 0:
        return const HomePage();
      case 1:
        return const StatisticsPage();
      // case 2:
      //   return const SendMoneyPage();
      case 3:
        return const SendMoneyPage();

      default:
        return const SizedBox();
    }
  }
}
