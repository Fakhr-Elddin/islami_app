import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_color.dart';
import 'package:islami_app/utils/app_styles.dart';

class RadioCardItem extends StatelessWidget {
  const RadioCardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,),
      decoration: BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          alignment: Alignment.bottomCenter,
          fit: BoxFit.fitWidth,
          image: AssetImage(
            'assets/images/radio_card_background.png',
          ),
        ),
      ),
      child: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              'Radio Ibrahim Al-Akdar',
              style: AppStyles.bold20Black,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.0,bottom: 14,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageIcon(
                  color: AppColor.blackColor,
                  AssetImage('assets/images/play_icon.png'),
                ),
                SizedBox(width: 20),
                ImageIcon(
                  color: AppColor.blackColor,
                  AssetImage('assets/images/sound_on_icon.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}