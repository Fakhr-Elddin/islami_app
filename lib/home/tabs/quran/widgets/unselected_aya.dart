import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_color.dart';
import 'package:islami_app/utils/app_styles.dart';

class UnselectedAya extends StatelessWidget {
  const UnselectedAya({super.key, required this.aya});

  final String aya;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: BoxBorder.all(
          color: AppColor.primaryColor,
          width: 2,
        ),
      ),
      child: Text(
        aya,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: AppStyles.bold20Primary,
      ),
    );
  }
}
