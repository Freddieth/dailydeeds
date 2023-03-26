import 'package:dailydeeds/modules/settings_tab/dropdownbuttonlang/dropdownbuttonlang.dart';
import 'package:dailydeeds/modules/settings_tab/dropdownbuttontheme/dropdownbuttontheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Settingstab extends StatelessWidget {
  Settingstab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.07),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
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
            AppLocalizations.of(context)!.theme,
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
