import 'package:flutter/material.dart';
import 'package:islami_app/app_color.dart';

class SurasListItem extends StatelessWidget {
  const SurasListItem({
    super.key,
    required this.suraNumber,
    required this.enSuraName,
    required this.arSuraName,
    required this.ayaNumber,
  });
  final int suraNumber;
  final String enSuraName;
  final String arSuraName;
  final String ayaNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 3.0,
      ),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                'assets/images/sura_number.png',
              ),
              Text(
                '$suraNumber',
                style: const TextStyle(
                  color: AppColor.whiteColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 24,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                enSuraName,
                style: const TextStyle(
                  color: AppColor.whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '$ayaNumber Verses',
                style: const TextStyle(
                  color: AppColor.whiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(),
          Text(
            arSuraName,
            style: const TextStyle(
              color: AppColor.whiteColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}