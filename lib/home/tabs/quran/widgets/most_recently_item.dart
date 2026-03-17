import 'package:flutter/material.dart';
import 'package:islami_app/app_color.dart';

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
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Al-Anbiya',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColor.blackColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0,),
                child: Text(
                  'الأنبياء',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blackColor,
                  ),
                ),
              ),
              Text(
                '112 Verses',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColor.blackColor,
                ),
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