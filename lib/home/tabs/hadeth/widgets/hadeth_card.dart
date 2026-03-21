import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_color.dart';
import 'package:islami_app/models/hadeth_model.dart';
import 'package:islami_app/utils/app_styles.dart';

class HadethCard extends StatelessWidget {
  const HadethCard({super.key, required this.hadethModel});

  final HadethModel hadethModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12,),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(
            'assets/images/hadith_card_background.png',
          ),
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        // width: 92,
                        // height: 100,
                        fit: BoxFit.contain,
                        'assets/images/hadeth_left_corner.png',
                      ),
                      Expanded(
                        child: Text(
                          hadethModel.title,
                          textAlign: TextAlign.center,
                          style: AppStyles.bold24Black,
                        ),
                      ),
                      Image.asset(
                        // width: 92,
                        // height: 100,
                        fit: BoxFit.contain,
                        'assets/images/hadeth_right_corner.png',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      hadethModel.content.join(''),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                      style: AppStyles.bold16Black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            width: double.infinity,
            fit: BoxFit.contain,
            'assets/images/hadeth_bottom_corner.png',
          ),
        ],
      ),
    );
  }
}