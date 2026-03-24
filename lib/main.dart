import 'package:flutter/material.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/home/tabs/hadeth/hadeth_details_screen.dart';
import 'package:islami_app/home/tabs/quran/sura_details_screen.dart';
import 'package:islami_app/utils/my_theme_data.dart';
import 'package:islami_app/screens/onboarding_screen.dart';
import 'cache/cache_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
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
        HadethDetailsScreen.routeName : (context) => const HadethDetailsScreen(),
      },
      initialRoute: (CacheHelper.getEligibility() ?? false) ? HomeScreen.routeName : OnboardingScreen.routeName,
    );
  }
}
