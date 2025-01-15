import 'package:finance_app/resources/app_colors.dart';
import 'package:finance_app/resources/app_images.dart';
import 'package:flutter/material.dart';

class TransferSlider extends StatefulWidget {
  final Function onTransfer;

  const TransferSlider({super.key, required this.onTransfer});

  @override
  State<TransferSlider> createState() => _TransferSliderState();
}

class _TransferSliderState extends State<TransferSlider> {
  double _dragPosition = 0.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        setState(() {
          _dragPosition += details.delta.dx;
        });
      },
      onHorizontalDragEnd: (details) {
        if (_dragPosition > 100) {
          widget.onTransfer();
          _dragPosition = 0.0;
        } else {
          setState(() {
            _dragPosition = 0.0;
          });
        }
      },
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 63,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: AppImages.svgSliderArrows,
              ),
            ),
          ),
          Positioned(
            left: _dragPosition,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 47, vertical: 23),
              decoration: BoxDecoration(
                color: AppColors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              alignment: Alignment.center,
              child: const Text(
                'Transfer',
                style: TextStyle(
                    color: AppColors.defaultTextColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
