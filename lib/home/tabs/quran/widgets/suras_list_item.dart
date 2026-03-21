import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_styles.dart';

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
                style: AppStyles.bold14White,
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
                style: AppStyles.bold20White,
              ),
              Text(
                '$ayaNumber Verses',
                style: AppStyles.bold14White,
              ),
            ],
          ),
          const Spacer(),
          Text(
            arSuraName,
            style: AppStyles.bold20White,
          ),
        ],
      ),
    );
  }
}