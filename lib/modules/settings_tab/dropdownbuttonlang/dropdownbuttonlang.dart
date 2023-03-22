import 'package:flutter/material.dart';

class Dropdownbuttonlang extends StatefulWidget {
  const Dropdownbuttonlang({super.key});

  @override
  State<Dropdownbuttonlang> createState() => _DropdownbuttonlangState();
}

class _DropdownbuttonlangState extends State<Dropdownbuttonlang> {
  int? selecteditem = 0;

  @override
  Widget build(BuildContext context) {
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
        child: DropdownButton(
          value: selecteditem,
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
                'ENGLISH',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).appBarTheme.backgroundColor),
              ),
            ),
            DropdownMenuItem(
              value: 1,
              child: Text(
                'العربيه',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).appBarTheme.backgroundColor),
              ),
            )
          ],
          onChanged: (value) {
            setState(() {
              selecteditem = value;
            });
          },
        ),
      ),
    );
  }
}
