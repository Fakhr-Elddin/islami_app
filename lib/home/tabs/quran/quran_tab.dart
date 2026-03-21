import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/quran/widgets/most_recently_list_view.dart';
import 'package:islami_app/home/tabs/quran/widgets/search_item.dart';
import 'package:islami_app/home/tabs/quran/widgets/suars_list_list_view.dart';
import 'package:islami_app/utils/app_styles.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              "assets/images/islami.png",
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchItem(),
          const SizedBox(
            height: 20,
          ),
           const Text(
              'Most Recently',
              style: AppStyles.bold16OffWhite,
            ),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 150,
            child: MostRecentlyListView(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
                'Suras List',
                style: AppStyles.bold16OffWhite,
              ),
          ),
          Expanded(
            child: SurasListListView(),
          ),
        ],
      ),
    );
  }
}




