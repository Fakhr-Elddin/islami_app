import 'package:flutter/material.dart';
import 'package:islami_app/app_color.dart';
import 'package:islami_app/models/hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  const HadethDetailsScreen({super.key});
  static const String routeName = 'hadethDetailsScreen';

  @override
  Widget build(BuildContext context) {
    var hadethDetail = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          hadethDetail.title,
          style: const TextStyle(
            color: AppColor.primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
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
                            style: const TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26.0),
                    child: Text(
                      hadethDetail.content.join(''),
                      textAlign: TextAlign.center,
                      textDirection: TextDirection.rtl,
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
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
