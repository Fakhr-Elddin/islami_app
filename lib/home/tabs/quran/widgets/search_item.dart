import 'package:flutter/material.dart';
import 'package:islami_app/utils/app_color.dart';
import 'package:islami_app/utils/app_styles.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key, required this.searchController});

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchController,
      cursorColor: AppColor.offWhiteColor,
      style: AppStyles.bold16OffWhite,
      decoration: InputDecoration(
        prefixIcon: const ImageIcon(
          color: AppColor.primaryColor,
          AssetImage('assets/images/ic_search.png'),
        ),
        labelText: 'Sura Name',
        labelStyle: AppStyles.bold16OffWhite,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColor.primaryColor),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
