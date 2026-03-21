import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_color.dart';
import 'package:islami_app/models/hadeth_model.dart';
import 'package:islami_app/utils/app_styles.dart';

class HadethDetailsScreen extends StatelessWidget {
  const HadethDetailsScreen({super.key});
  static const String routeName = 'hadethDetailsScreen';

  @override
  Widget build(BuildContext context) {
    var hadethDetail = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        width: 93,
                        height: 92,
                        'assets/images/img_left_corner.png',
                      ),
                      Expanded(
                        child: Text(
                          hadethDetail.title,
                          textAlign: TextAlign.center,
                          style: AppStyles.bold24Primary,
                        ),
                      ),
                      Image.asset(
                        width: 93,
                        height: 92,
                        'assets/images/img_right_corner.png',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26.0),
                    child: Text(
                      hadethDetail.content[index],
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: AppStyles.bold20Primary,
                    ),
                  ),
                    itemCount: hadethDetail.content.length,
                  ),
                ),

              ],
            ),
          ),
          Image.asset(
            'assets/images/img_bottom_decoration.png',
          ),
        ],
      ),
    );
  }
}
