import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/quran/widgets/most_recently_item.dart';

class MostRecentlyListView extends StatelessWidget {
  const MostRecentlyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => const MostRecentlyItem(),
      separatorBuilder: (context, index) => const SizedBox(width: 10,),
      itemCount: 5,
    );
  }
}