import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Adddtaskbuttonsheet extends StatefulWidget {
  const Adddtaskbuttonsheet({super.key});

  @override
  State<Adddtaskbuttonsheet> createState() => _AdddtaskbuttonsheetState();
}

class _AdddtaskbuttonsheetState extends State<Adddtaskbuttonsheet> {
  final _formkey = GlobalKey<FormState>();
  final titlecontroler = TextEditingController();
  final descreptioncontroler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              AppLocalizations.of(context)!.add_new_task,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            TextFormField(
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return AppLocalizations.of(context)!
                      .please_enter_a_valid_value;
                } else {
                  return null;
                }
              },
              controller: titlecontroler,
              decoration: InputDecoration(
                  label: Text(
                AppLocalizations.of(context)!.title,
                style: Theme.of(context).textTheme.titleSmall,
              )),
            ),
            TextFormField(
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return AppLocalizations.of(context)!
                      .please_enter_a_valid_value;
                } else {
                  return null;
                }
              },
              controller: descreptioncontroler,
              decoration: InputDecoration(
                label: Text(
                  AppLocalizations.of(context)!.description,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              maxLines: 2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              AppLocalizations.of(context)!.select_date,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Text(
              '8/7/2002',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      onPressed: () {
                        addtask();
                      },
                      child: Text(
                        AppLocalizations.of(context)!.submit,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color:
                                    Theme.of(context).colorScheme.background),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void addtask() {
    if (_formkey.currentState!.validate()) {
      // do somtheing
    }
  }
}
