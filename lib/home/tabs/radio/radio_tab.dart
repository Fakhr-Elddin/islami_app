import 'package:flutter/material.dart';
import 'package:islami_app/home/tabs/radio/widgets/custom_toggle_buttons.dart';
import 'package:islami_app/home/tabs/radio/widgets/radio_card_item.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset("assets/images/islami.png")),
        const CustomToggleButtons(),
        const RadioCardItem(),
      ],
    );
  }
}






