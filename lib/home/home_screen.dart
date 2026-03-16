import 'package:flutter/material.dart';
import 'package:islami_app/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          'assets/images/home_background.png',
        ),
        Scaffold(
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: AppColor.primaryColor,
            ),
            child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index){
               if( currentIndex != index){
                 setState(() {
                   currentIndex = index;
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
        ),
      ],
    );
  }

  BottomNavigationBarItem customBottomNavigationBarItem({required String image, required String label, required int index}) {
    return BottomNavigationBarItem(
                icon: currentIndex == index ? Container(
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
