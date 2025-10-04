import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/ui_datas.dart';

class DataList extends StatefulWidget {
  const DataList({super.key, required this.currentIndeks});

  final int currentIndeks;
  @override
  State<DataList> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<DataList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < UiDatas.onboardDatas.length; i++)
          SizedBox(
            width: 8,
            height: 8,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: widget.currentIndeks == i
                    ? null
                    : AppColors.greyscale300,
                gradient: widget.currentIndeks == i
                    ? const LinearGradient(
                        colors: AppColors.doLinerGradientColor,
                      )
                    : null,
              ),

              //  _currentPage == index
            ),
          ),
      ],

      // children: List.generate(
      //   UiDatas.onboardDatas.length,
      //   (index) => Container(
      //     margin: EdgeInsets.symmetric(horizontal: 4),
    );
  }
}
