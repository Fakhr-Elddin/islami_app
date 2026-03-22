import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_color.dart';
import 'package:islami_app/utils/app_styles.dart';

class CustomToggleButtons extends StatefulWidget {
  const CustomToggleButtons({super.key});

  @override
  State<CustomToggleButtons> createState() => _CustomToggleButtonsState();
}

class _CustomToggleButtonsState extends State<CustomToggleButtons> {
  List<bool> isSelected = [true, false];
  int selectedIndex = 0;
  List<String> labels = ['Radio', 'Reciters'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.blackColor.withValues(alpha: 0.7),
      ),
      child: ToggleButtons(
        borderRadius: BorderRadius.circular(12),
        constraints: BoxConstraints.expand(
          width:
          (MediaQuery.of(context).size.width - 40) / isSelected.length,
          height: 40,
        ),
        fillColor: AppColor.transparentColor,
        renderBorder: false,
        onPressed: (index) {
          if(selectedIndex != index){
            for (int i = 0; i < isSelected.length; i++) {
              isSelected[i] = false;
            }
            isSelected[index] = true;
            selectedIndex = index;
            setState(() {});
          }
        },
        isSelected: isSelected,
        children: labels.map((label) {
          return Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: selectedIndex == labels.indexOf(label)
                  ? AppColor.primaryColor
                  : AppColor.transparentColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              label,
              style: selectedIndex == labels.indexOf(label)
                  ? AppStyles.bold16Black
                  : AppStyles.regular16White,
            ),
          );
        }).toList(),
      ),
    );
  }
}