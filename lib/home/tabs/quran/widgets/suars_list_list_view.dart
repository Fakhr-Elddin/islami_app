import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/quran/sura_details_screen.dart';
import 'package:islami_app/home/tabs/quran/widgets/suras_list_item.dart';
import 'package:islami_app/models/sura_details_model.dart';
import 'package:islami_app/utils/app_color.dart';

class SurasListListView extends StatelessWidget {
  const SurasListListView({super.key,});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            SuraDetailsScreen.routeName,
            arguments: SuraDetailsModel(
              enSuraName: SuraDetailsModel.englishQuranSurahs[index],
              arSuraName: SuraDetailsModel.arabicQuranSuras[index],
              ayaNumber: SuraDetailsModel.ayasNumber[index],
              suraNumber: index+1,
            ),
          );
        },
        child: SurasListItem(
          suraDetailsModel: SuraDetailsModel.getSuraModel(index: index),
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
      itemCount: SuraDetailsModel.arabicQuranSuras.length,
    );
  }
}