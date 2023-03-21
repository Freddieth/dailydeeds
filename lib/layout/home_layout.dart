import 'package:dailydeeds/modules/list_tab/list_tab.dart';
import 'package:dailydeeds/modules/settings_tab/settings_tab.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'homelayout';
  HomeLayout({super.key});

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
        title: const Text('Daily Deeds'),
      ),
      body: tabs[selectedindex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
            side: BorderSide(
                color: Theme.of(context).colorScheme.background, width: 4)),
        child: const Icon(Icons.add),
        onPressed: () {},
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
                BottomNavigationBarItem(
                    icon: Icon(Icons.list),
                    backgroundColor: Colors.white,
                    label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    backgroundColor: Colors.white,
                    label: '')
              ])),
    );
  }

  List<Widget> tabs = const [Listtab(), Settingstab()];
}
