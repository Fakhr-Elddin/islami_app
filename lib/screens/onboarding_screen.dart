import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_color.dart';
import 'package:islami_app/models/onboarding_model.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/widgets/boarding_item.dart';
import 'package:islami_app/widgets/custom_text_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const String routeName = '/';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController boardingController = PageController();
  bool isFirst = true;
  bool isLast = false;
  final List<BoardingModel> boardingList = [
    BoardingModel(
      image: 'assets/images/onboarding_1.png',
      title: 'Welcome To Islami App',
    ),
    BoardingModel(
      image: 'assets/images/onboarding_2.png',
      title: 'Welcome To Islami App',
      subTitle: "We Are Very Excited To Have You In Our Community",
    ),
    BoardingModel(
      image: 'assets/images/onboarding_3.png',
      title: 'Reading the Quran',
      subTitle: "Read, and your Lord is the Most Generous",
    ),
    BoardingModel(
      image: 'assets/images/onboarding_4.png',
      title: 'Bearish',
      subTitle: "Praise the name of your Lord, the Most High",
    ),
    BoardingModel(
      image: 'assets/images/onboarding_5.png',
      title: 'Holy Quran Radio',
      subTitle: "You can listen to the Holy Quran Radio through the application for free and easily",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF202020),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: boardingController,
                  onPageChanged: (index) {
                    if(index == boardingList.length - 1){
                      isLast = true;
                    } else{
                      isLast = false;
                    }
                    if(index == 0){
                      isFirst = true;
                    } else{
                      isFirst = false;
                    }
                    setState(() {});
                  },
                  physics: const BouncingScrollPhysics(),
                  itemCount: boardingList.length,
                  reverse: false,
                  itemBuilder: (context, index) => BoardingItem(
                    boardingModel: boardingList[index],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  (isFirst)
                      ? const SizedBox(width: 64,)
                      : CustomTextButton(
                    text: 'Back',
                    onPressed: (){
                      if(!isFirst){
                        boardingController.previousPage(
                          duration: const Duration(
                              milliseconds: 750
                          ),
                          curve: Curves.fastEaseInToSlowEaseOut,
                        );
                      }
                    },
                  ),
                  SmoothPageIndicator(
                      controller: boardingController,
                      count:  boardingList.length,
                      effect: const ExpandingDotsEffect(
                        activeDotColor: AppColor.primaryColor,
                        dotColor: Color(0xff707070),
                        dotHeight: 7,
                        dotWidth: 7,
                      ),  // your preferred effect
                      onDotClicked: (index){
                      }
                  ),
                  CustomTextButton(
                    text: isLast ? 'Finish' : 'Next',
                    onPressed: (){
                      if(!isLast){
                        boardingController.nextPage(
                          duration: const Duration(
                            milliseconds: 750
                          ),
                          curve: Curves.fastEaseInToSlowEaseOut,
                        );
                      } else{
                        Navigator.pushReplacementNamed(context, HomeScreen.routeName,);
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


