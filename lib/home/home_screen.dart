import 'package:flutter/material.dart';
import 'package:islami_app/app_color.dart';
import 'package:islami_app/home/tabs/hadeth/hadeth_tab.dart';
import 'package:islami_app/home/tabs/quran/quran_tab.dart';
import 'package:islami_app/home/tabs/radio/radio_tab.dart';
import 'package:islami_app/home/tabs/sebha/sebha_tab.dart';
import 'package:islami_app/home/tabs/time/time_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<String>  backgroundImageList = [
    "assets/images/home_background.png",
    "assets/images/hadeth_background.png",
    "assets/images/sebha_background.png",
    "assets/images/radio_background.png",
    "assets/images/time_background.png",
  ];

  final List<Widget> tabs = const [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          backgroundImageList[selectedIndex],
        ),
        Scaffold(
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: AppColor.primaryColor,
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index){
               if( selectedIndex != index){
                 setState(() {
                   selectedIndex = index;
                 });
               }
              },

              items: [
                customBottomNavigationBarItem(
                  image: 'assets/images/ic_quran.png',
                  label: 'Quran',
                  index: 0,
                ),
                customBottomNavigationBarItem(
                    image: 'assets/images/ic_hadeth.png',
                    label: 'Hadith',
                    index: 1,
                ),
                customBottomNavigationBarItem(
                    image: 'assets/images/ic_sebha.png',
                    label: 'Sebha',
                    index: 2,
                ),
                customBottomNavigationBarItem(
                    image: 'assets/images/ic_radio.png',
                    label: 'Radio',
                    index: 3,
                ),
                customBottomNavigationBarItem(
                    image: 'assets/images/ic_time.png',
                    label: 'Time',
                    index: 4,
                ),
              ],
            ),
          ),
          body: SafeArea(
              child: tabs[selectedIndex],
          ),
        ),
      ],
    );
  }

  BottomNavigationBarItem customBottomNavigationBarItem({required String image, required String label, required int index}) {
    return BottomNavigationBarItem(
                icon: selectedIndex == index ? Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                      color: AppColor.blackColor.withValues(
                        alpha: 0.6,
                      ),
                      borderRadius: BorderRadius.circular(66)
                  ),
                  child: ImageIcon(
                    AssetImage(
                        image
                    ),
                  ),
                ) : ImageIcon(
                  AssetImage(
                      image,
                  ),
                ),
                label: label,
              );
  }
}
