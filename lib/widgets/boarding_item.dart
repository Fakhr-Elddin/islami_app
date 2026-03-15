import 'package:flutter/material.dart';
import 'package:islami_app/models/onboarding_model.dart';

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
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Janna LT',
            color: Color(0xffE2BE7F),
          ),
        ),
        Text(
          boardingModel.subTitle ?? '',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Janna LT',
            color: Color(0xffE2BE7F),
          ),
        ),
      ],
    );
  }
}