import 'package:flutter/material.dart';
import 'package:medicate/styling/styling.dart';
import 'package:medicate/widgets/calendar.dart';
import 'package:medicate/widgets/medication_widget/medication_widget_mobile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffold();
}

class _MobileScaffold extends State<MobileScaffold> {
  late int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.black38,
          elevation: 2,
          titleTextStyle: const TextStyle(color: Styling.textColour, fontSize: 25, fontFamily: 'Roboto'),
          title: const Text('Prescriptions'),
          centerTitle: true,
          actions: [
            Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: const Icon(Icons.notifications_rounded),
                color: Styling.textColour,
                iconSize: 35,
                onPressed: () {
                  // Do something when the bell icon is pressed.
                },
              ),
            ),
          ],
        ),
        body: <Widget>[
          const MedicationWidget(),
          const CalendarWidget(),
        ][currentPageIndex],
        bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            selectedIndex: currentPageIndex,
            destinations: const <Widget>[
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.medication_outlined,
                  size: 38,
                  color: Styling.iconColour,
                ),
                icon: Icon(
                  Icons.medication_outlined,
                  color: Styling.textColour,
                  size: 38,
                ),
                label: 'Prescriptions',
              ),
              NavigationDestination(
                selectedIcon: Icon(
                  Icons.calendar_month_outlined,
                  size: 38,
                  color: Styling.iconColour,
                ),
                icon: Icon(Icons.calendar_month_outlined, size: 38, color: Styling.textColour),
                label: 'Appointments',
              ),
            ],
            backgroundColor: Styling.mainBackgroundColour));
  }
}
