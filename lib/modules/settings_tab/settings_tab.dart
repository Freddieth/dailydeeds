import 'package:dailydeeds/modules/settings_tab/dropdownbuttonlang/dropdownbuttonlang.dart';
import 'package:dailydeeds/modules/settings_tab/dropdownbuttontheme/dropdownbuttontheme.dart';
import 'package:flutter/material.dart';

class Settingstab extends StatelessWidget {
  const Settingstab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.07),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Language',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          const Dropdownbuttonlang(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Text(
            'Theme',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          const DropdownButtontheme(),
        ],
      ),
    );
  }
}
