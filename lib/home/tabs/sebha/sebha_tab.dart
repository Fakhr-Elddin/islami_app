import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_styles.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {

  int counter = 0;
  String sebha = 'سبحان الله';
  double angel = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset("assets/images/islami.png")),
        const SizedBox(
          height: 16,
        ),
        Text(
          "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
          textAlign: TextAlign.center,
          style: AppStyles.bold36White,
        ),
        const SizedBox(
          height: 16,
        ),
        InkWell(
          onTap: (){
            counter++;
            angel += 0.1;
            if(counter == 33){
              sebha = 'الحمد الله';
          }
            if(counter == 66){
              sebha = 'لا إله إلا الله';
            }
            if(counter == 66){
              sebha = 'الله اكبر';
          }
            if(counter == 99){
              counter = 0;
              angel = 0;
              sebha = 'سبحان الله';
            }
            setState(() {});
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Transform.rotate(
                angle: angel,
                child: Image.asset(
                  'assets/images/sebha.png',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Column(
                  children: [
                    Text(
                      sebha,
                      style: AppStyles.bold36White,
                    ),
                    Text(
                      '$counter',
                      style: AppStyles.bold36White,
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}
