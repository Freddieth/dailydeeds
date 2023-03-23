import 'package:dailydeeds/services/provider/theme/themeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DropdownButtontheme extends StatefulWidget {
  const DropdownButtontheme({super.key});

  @override
  State<DropdownButtontheme> createState() => _DropdownButtonthemeState();
}

class _DropdownButtonthemeState extends State<DropdownButtontheme> {
  int? selecteditem;
  @override
  Widget build(BuildContext context) {
    var themeprovider = Provider.of<ThemeProvider>(context);
    return DropdownButtonHideUnderline(
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            border: Border.all(
                color: Theme.of(context)
                        .dropdownMenuTheme
                        .inputDecorationTheme!
                        .iconColor ??
                    Colors.transparent),
            borderRadius: BorderRadius.circular(25)),
        child: DropdownButton<int>(
          value: themeprovider.currenttheme == ThemeMode.light
              ? selecteditem = 0
              : selecteditem = 1,
          borderRadius: BorderRadius.circular(25),
          dropdownColor: Theme.of(context).colorScheme.background,
          elevation: 6,
          icon: const Icon(Icons.keyboard_arrow_down),
          iconEnabledColor: Theme.of(context)
              .dropdownMenuTheme
              .inputDecorationTheme!
              .iconColor,
          isExpanded: true,
          items: [
            DropdownMenuItem(
              value: 0,
              child: Text(
                AppLocalizations.of(context)!.light,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).appBarTheme.backgroundColor),
              ),
            ),
            DropdownMenuItem(
              value: 1,
              child: Text(
                AppLocalizations.of(context)!.dark,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).appBarTheme.backgroundColor),
              ),
            )
          ],
          onChanged: (value) {
            setState(() {
              selecteditem = value;
              isDark()
                  ? themeprovider.changetheme(ThemeMode.dark)
                  : themeprovider.changetheme(ThemeMode.light);
            });
          },
        ),
      ),
    );
  }

  bool isDark() {
    return selecteditem == 1;
  }
}
