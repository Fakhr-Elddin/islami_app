import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/quran/widgets/most_recently_list_view.dart';
import 'package:islami_app/home/tabs/quran/widgets/search_item.dart';
import 'package:islami_app/home/tabs/quran/widgets/suars_list_list_view.dart';
import 'package:islami_app/models/sura_details_model.dart';
import 'package:islami_app/utils/app_styles.dart';

class QuranTab extends StatefulWidget {
  const QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  TextEditingController searchController = TextEditingController();
  void onSearch(){
    SuraDetailsModel.searchResultList.clear();
    String text = searchController.text;
    if(text.isNotEmpty){
      for(var data in SuraDetailsModel.englishQuranSurahs){
        if(data.toLowerCase().contains(text.toLowerCase())){
          SuraDetailsModel.searchResultList.add(data);
        }
      }
    }
    setState(() {});
  }
  @override
  void initState() {
    super.initState();
    searchController.addListener(onSearch);
  }
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
          SearchItem(
            searchController: searchController,
          ),
          const SizedBox(
            height: 20,
          ),
          if(SuraDetailsModel.searchResultList.isEmpty && searchController.text.isEmpty)
            ...[
            const MostRecentlySection(),
          ],
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
                'Suras List',
                style: AppStyles.bold16OffWhite,
              ),
          ),
          const Expanded(
            child: SurasListListView(),
          ),
        ],
      ),
    );
  }
}




class MostRecentlySection extends StatelessWidget {
  const MostRecentlySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          'Most Recently',
          style: AppStyles.bold16OffWhite,
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 150,
          child: MostRecentlyListView(),
        ),
      ],
    );
  }
}
