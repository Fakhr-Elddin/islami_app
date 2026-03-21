import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/utils/app_color.dart';
import 'package:islami_app/home/tabs/hadeth/hadeth_details_screen.dart';
import 'package:islami_app/home/tabs/hadeth/widgets/hadeth_card.dart';
import 'package:islami_app/models/hadeth_model.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadethModel> hadethList = [];

  void loadHadethFile() async {
    for (int i = 1; i <= 50; i++) {
      String hadeth = await rootBundle.loadString('assets/files/h$i.txt');
      List<String> hadethLines = hadeth.split('\n');
      String hadethTitle = hadethLines[0];
      hadethLines.removeAt(0);
      HadethModel hadethModel = HadethModel(
        title: hadethTitle,
        content: hadethLines,
      );
      hadethList.add(hadethModel);
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    if (hadethList.isEmpty) {
      loadHadethFile();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset("assets/images/islami.png")),
        CarouselSlider.builder(
          options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            height: 600,
            viewportFraction: 0.75,
            enlargeCenterPage: true,
          ),
          itemCount: hadethList.length,
          itemBuilder: (context, index, realIndex) => hadethList.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(
                    color: AppColor.primaryColor,
                  ),
                )
              : InkWell(
            onTap: (){
              Navigator.of(context).pushNamed(
                HadethDetailsScreen.routeName,
                arguments: hadethList[index],
              );
            },
                child: HadethCard(
                            hadethModel: hadethList[index],
                          ),
              ),
        ),
      ],
    );
  }
}


