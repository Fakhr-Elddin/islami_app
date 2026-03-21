import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_color.dart';
import 'package:islami_app/utils/app_styles.dart';

class MostRecentlyItem extends StatelessWidget {
  const MostRecentlyItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 283,
      padding: const EdgeInsets.only(
        top: 12,
        bottom: 20,
        left: 16,
        right: 6,
      ),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Al-Anbiya',
                style: AppStyles.bold24Black,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,),
                child: Text(
                  'الأنبياء',
                  style: AppStyles.bold24Black,
                ),
              ),
              Text(
                '112 Verses',
                style: AppStyles.bold14Black,
              ),
            ],
          ),
          Image.asset(
            'assets/images/img_most_recent.png',
          ),
        ],
      ),
    );
  }
}