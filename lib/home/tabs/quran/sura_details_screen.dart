import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:islami_app/app_color.dart';
import 'package:islami_app/models/sura_details_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  const SuraDetailsScreen({super.key});
  static const String routeName = 'suraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  Future<List<String>>? versesFuture;
  Future<List<String>> loadAsset(int suraNumber) async {
    String fileText = await rootBundle.loadString('assets/files/$suraNumber.txt');
    List<String> verses = fileText.split('\n');
    return verses;
  }
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var suraDetailsModel = ModalRoute.of(context)?.settings.arguments as SuraDetailsModel;
    // ??= : if(versesFuture == null)
    versesFuture ??= loadAsset(suraDetailsModel.suraNumber);
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          suraDetailsModel.enSuraName,
          style: const TextStyle(
            color: AppColor.primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 10,
        ),
        child: FutureBuilder< List<String>>(
            future: versesFuture,
            builder: (context, snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting){
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColor.primaryColor,
                  ),
                );
              }
              if (snapshot.hasError) {
                return const Center(child: Text("خطأ في تحميل السورة"));
              }
              return Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            width: 93,
                            height: 92,
                            'assets/images/img_left_corner.png',
                          ),
                          Expanded(
                            child: Text(
                              suraDetailsModel.arSuraName,
                              textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ),
                          Image.asset(
                            width: 93,
                            height: 92,
                            'assets/images/img_right_corner.png',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index) => InkWell(
                            onTap: (){
                              if(index != selectedIndex){
                                setState(() {
                                  selectedIndex = index;
                                });
                              }
                            },
                            child: selectedIndex == index ? Container(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              margin: const EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: AppColor.primaryColor,
                                border: BoxBorder.all(
                                  color: AppColor.primaryColor,
                                  width: 2,
                                ),
                              ),
                              child: Text(
                                "${snapshot.data![index]}[${index+1}]",
                                textAlign: TextAlign.center,
                                textDirection: TextDirection.rtl,
                                style: const TextStyle(
                                  color: AppColor.blackColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                                : Container(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              margin: const EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: BoxBorder.all(
                                  color: AppColor.primaryColor,
                                  width: 2,
                                ),
                              ),
                              child: Text(
                                "${snapshot.data![index]}[${index+1}]",
                                textAlign: TextAlign.center,
                                textDirection: TextDirection.rtl,
                                style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/img_bottom_decoration.png',
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
