import 'package:flutter/material.dart';
import 'package:islami_app/models/onboarding_model.dart';
import 'package:islami_app/utils/app_styles.dart';

class BoardingItem extends StatelessWidget {
  const BoardingItem({
    super.key,
    required this.boardingModel,
  });
  final BoardingModel boardingModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/images/islami.png",
        ),
        Image.asset(
          boardingModel.image,
        ),
        Text(
          boardingModel.title,
          style: AppStyles.bold24Primary,
        ),
        Text(
          boardingModel.subTitle ?? '',
          textAlign: TextAlign.center,
          style: AppStyles.bold20Primary,
        ),
      ],
    );
  }
}