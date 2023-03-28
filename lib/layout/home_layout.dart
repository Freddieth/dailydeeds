import 'package:dailydeeds/layout/buttonbottomsheet/buttonbottomsheet.dart';
import 'package:dailydeeds/modules/list_tab/list_tab.dart';
import 'package:dailydeeds/modules/settings_tab/settings_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// import 'buttonbottomsheet/buttonbottomsheet.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'homelayout';
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.25,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.08,
                  right: MediaQuery.of(context).size.width * 0.08),
              child: Text(
                AppLocalizations.of(context)!.daily_deeds,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontFamily: 'Poppins',
                    fontSize: 24.0),
              ),
            )
          ],
        ),
      ),
      body: tabs[selectedindex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
            side: BorderSide(
                color: Theme.of(context).colorScheme.background, width: 4)),
        child: const Icon(Icons.add),
        onPressed: () {
          showaddtaskbottomsheet();
        },
      ),
      bottomNavigationBar: BottomAppBar(
          notchMargin: 8,
          shape: const CircularNotchedRectangle(),
          child: BottomNavigationBar(
              currentIndex: selectedindex,
              onTap: (value) {
                setState(() {
                  selectedindex = value;
                });
              },
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
                BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
              ])),
    );
  }

  List<Widget> tabs = [const Listtab(), Settingstab()];

  void showaddtaskbottomsheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const Adddtaskbuttonsheet(),
    );
  }
}
