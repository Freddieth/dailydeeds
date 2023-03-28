import 'package:flutter/material.dart';

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
              'Add New Task',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            TextFormField(
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'Please Enter A Valid Value';
                } else {
                  return null;
                }
              },
              controller: titlecontroler,
              decoration: InputDecoration(
                  label: Text(
                'Title',
                style: Theme.of(context).textTheme.titleSmall,
              )),
            ),
            TextFormField(
              validator: (value) {
                if (value!.trim().isEmpty) {
                  return 'Please Enter A Valid Value';
                } else {
                  return null;
                }
              },
              controller: descreptioncontroler,
              decoration: InputDecoration(
                label: Text(
                  'Description',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              maxLines: 3,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Text(
              'Select Date',
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
                        'Submet',
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
