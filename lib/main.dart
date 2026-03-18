import 'package:flutter/material.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/home/tabs/quran/sura_details_screen.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/screens/onboarding_screen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.darkTheme,
      routes: {
        OnboardingScreen.routeName : (context) => const OnboardingScreen(),
        HomeScreen.routeName : (context) => const HomeScreen(),
        SuraDetailsScreen.routeName : (context) => const SuraDetailsScreen(),
      },
      initialRoute: OnboardingScreen.routeName,
    );
  }
}
