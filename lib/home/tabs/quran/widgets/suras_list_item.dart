import 'package:flutter/material.dart';
import 'package:islami_app/models/sura_details_model.dart';
import 'package:islami_app/utils/app_styles.dart';

class SurasListItem extends StatelessWidget {
  const SurasListItem({
    super.key,
    required this.suraDetailsModel,
  });
  final SuraDetailsModel suraDetailsModel;

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
                '${suraDetailsModel.suraNumber}',
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
                suraDetailsModel.enSuraName,
                style: AppStyles.bold20White,
              ),
              Text(
                '${suraDetailsModel.ayaNumber} Verses',
                style: AppStyles.bold14White,
              ),
            ],
          ),
          const Spacer(),
          Text(
            suraDetailsModel.arSuraName,
            style: AppStyles.bold20White,
          ),
        ],
      ),
    );
  }
}