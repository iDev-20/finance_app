import 'package:finance_app/components/app_section_container.dart';
import 'package:finance_app/components/calc_button.dart';
import 'package:finance_app/resources/app_colors.dart';
import 'package:finance_app/resources/app_images.dart';
import 'package:flutter/material.dart';

class SendMoneyPage extends StatefulWidget {
  const SendMoneyPage({super.key});

  @override
  State<SendMoneyPage> createState() => _SendMoneyPageState();
}

class _SendMoneyPageState extends State<SendMoneyPage> {
  String expression = '';

  void numClick(String text) {
    setState(() {
      expression += text;
    });
  }
  void clear(String text) {
    setState(() {
      expression = '';
    });
  }


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
          'Send Money',
          style: TextStyle(
              color: AppColors.defaultTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(26, 16, 26, 16),
              child: Column(
                children: [
                  AppSectionContainer(
                    child: Row(
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
                            const SizedBox(width: 19),
                            const Column(
                              children: [
                                Text(
                                  'Allysa Wilson',
                                  style: TextStyle(
                                      color: AppColors.defaultTextColor,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '**** **** 8901',
                                  style: TextStyle(
                                      color: AppColors.defaultTextColor,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                        AppImages.svgGrouppedIcon2
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  AppSectionContainer(
                    left: 13.92,
                    top: 14,
                    right: 12.92,
                    bottom: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Add note',
                          style: TextStyle(
                              color: AppColors.defaultTextColor, fontSize: 12),
                        ),
                        AppImages.svgStickerIcon
                      ],
                    ),
                  ),
                  const SizedBox(height: 58),
                  Container(
                    alignment: const Alignment(0, 0),
                    child: Text(
                      '\$ $expression',
                      style: const TextStyle(
                          color: AppColors.defaultTextColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  const SizedBox(height: 54),
                  AppSectionContainer(
                    left: 38,
                    top: 30,
                    right: 38,
                    bottom: 30,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(
                              text: '1',
                              callback: numClick,
                            ),
                            CalcButton(
                              text: '2',
                              callback: numClick,
                            ),
                            CalcButton(
                              text: '3',
                              callback: numClick,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(
                              text: '4',
                              callback: numClick,
                            ),
                            CalcButton(
                              text: '5',
                              callback: numClick,
                            ),
                            CalcButton(
                              text: '6',
                              callback: numClick,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(
                              text: '7',
                              callback: numClick,
                            ),
                            CalcButton(
                              text: '8',
                              callback: numClick,
                            ),
                            CalcButton(
                              text: '9',
                              callback: numClick,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalcButton(
                              text: '.',
                              callback: numClick,
                            ),
                            CalcButton(
                              text: '0',
                              callback: numClick,
                            ),
                            CalcButton(
                              text: 'X',
                              callback: clear,
                            ),
                          ],
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
}
