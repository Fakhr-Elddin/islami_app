import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/quran/sura_details_screen.dart';
import 'package:islami_app/home/tabs/quran/widgets/suras_list_item.dart';
import 'package:islami_app/models/sura_details_model.dart';
import 'package:islami_app/utils/app_color.dart';

class SurasListListView extends StatelessWidget {
  const SurasListListView({
    super.key,
    required this.englishQuranSurahs,
    required this.arabicQuranSuras,
    required this.ayaNumber,
  });

  final List<String> englishQuranSurahs;
  final List<String> arabicQuranSuras;
  final List<String> ayaNumber;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            SuraDetailsScreen.routeName,
            arguments: SuraDetailsModel(
              enSuraName: englishQuranSurahs[index],
              arSuraName: arabicQuranSuras[index],
              suraNumber: index+1,
            ),
          );
        },
        child: SurasListItem(
          enSuraName: englishQuranSurahs[index],
          arSuraName: arabicQuranSuras[index],
          ayaNumber: ayaNumber[index],
          suraNumber: index + 1,
        ),
      )
      ,
      separatorBuilder: (context, index) => const Divider(
        color: AppColor.whiteColor,
        indent: 40,
        endIndent: 40,
        height: 20,
        thickness: 2,
      ),
      itemCount: arabicQuranSuras.length,
    );
  }
}