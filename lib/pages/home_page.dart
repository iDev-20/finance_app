import 'package:finance_app/components/date_time_extensions.dart';
import 'package:finance_app/components/ui_models.dart';
import 'package:finance_app/resources/app_colors.dart';
import 'package:finance_app/resources/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Transactions> transactions = [
    Transactions(icon: AppImages.svgMusicIcon, amount: '+ \$212.00'),
    Transactions(icon: AppImages.svgMovieIcon, amount: '- \$360.00'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 37, 25, 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: const BoxDecoration(
                                color: Color(0xFFD9D9D9),
                                shape: BoxShape.circle),
                          ),
                          const SizedBox(width: 15),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello!',
                                style: TextStyle(
                                    color: Color(0xFF969696),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 3),
                              Text(
                                'Mark Willie',
                                style: TextStyle(
                                    color: AppColors.defaultTextColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                      AppImages.svgNotificationIcon,
                    ],
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 18),
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Balance',
                                  style: TextStyle(
                                    color: AppColors.defaultTextColor,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 6),
                                Text(
                                  '\$ 24,450.89',
                                  style: TextStyle(
                                      color: AppColors.defaultTextColor,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  'Expiry Date',
                                  style: TextStyle(
                                    color: AppColors.defaultTextColor,
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  '06/27',
                                  style: TextStyle(
                                    color: AppColors.defaultTextColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 41,
                        ),
                        AppImages.svgGrouppedIcon
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          expenseIncomeContainer(text: 'Expense'),
                          const SizedBox(height: 9),
                          expenseIncomeContainer(text: 'Income'),
                        ],
                      ),
                      yearlyStatusChart()
                    ],
                  ),
                  const SizedBox(height: 26),
                  const Text(
                    'Quick Send',
                    style: TextStyle(
                        color: AppColors.defaultTextColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 16),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: quickSendOptions()),
                  const SizedBox(height: 22),
                  Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Transaction',
                            style: TextStyle(
                                color: AppColors.defaultTextColor,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                              color: AppColors.blue,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.only(left: 21, top: 22, right: 25),
                        decoration: BoxDecoration(
                          color: AppColors.containerColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            ...(transactions).map(
                              (e) => transaction(transactions: e),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget expenseIncomeContainer({required String text}) {
    return Container(
      // width: 153,
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 24),
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              color: AppColors.defaultTextColor,
            ),
          ),
          const SizedBox(width: 3),
          if (text == 'Expense') AppImages.svgExpenseIcon,
          if (text == 'Income') AppImages.svgIncomeIcon
        ],
      ),
    );
  }

  Widget yearlyStatusChart() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 18),
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Yearly Status',
                style: TextStyle(
                  color: AppColors.defaultTextColor,
                  fontSize: 10,
                ),
              ),
              AppImages.svgArrow
            ],
          ),
          const SizedBox(height: 3),
          Text(
            DateTime.now().friendlyMonth(),
            style: const TextStyle(
                color: AppColors.defaultTextColor, fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 8.53),
          SizedBox(
            height: 55,
            width: 142,
            child: Image(image: AppImages.graphSmall),
          ),
          const SizedBox(height: 3.93),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              month(month: 'Jan'),
              month(month: 'Feb'),
              month(month: 'Mar'),
              month(month: 'Apr'),
              month(month: 'May'),
              month(month: 'Jun'),
            ],
          )
        ],
      ),
    );
  }

  Widget month({required String month}) {
    return Text(
      month,
      style: const TextStyle(color: Color(0xFF969696), fontSize: 9),
    );
  }

  Widget quickSendOptions() {
    return Row(
      children: [
        Column(
          children: [
            AppImages.svgAddIconWithCircle,
            const SizedBox(height: 3),
            const Text(
              'Add',
              style: TextStyle(
                  color: AppColors.defaultTextColor,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
        singleOption(name: 'Roberto'),
        singleOption(name: 'Jenda'),
        singleOption(name: 'Alberto'),
        singleOption(name: 'Marvie'),
        singleOption(name: 'Steve'),
        singleOption(name: 'Hank'),
      ],
    );
  }

  Widget singleOption({required String name}) {
    return Padding(
      padding: const EdgeInsets.only(left: 23),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
                color: AppColors.boxColorCircle, shape: BoxShape.circle),
          ),
          const SizedBox(height: 3),
          Text(
            name,
            style: const TextStyle(
                color: Color(0xFF8B8B8B), fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  Widget transaction({required Transactions transactions}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 21),
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
                    style:
                        const TextStyle(color: Color(0xFF969696), fontSize: 12),
                  ),
                ],
              ),
            ],
          ),
          Text(
            transactions.amount,
            style: const TextStyle(
                color: AppColors.defaultTextColor, fontWeight: FontWeight.w500),
          ),
        ],
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
