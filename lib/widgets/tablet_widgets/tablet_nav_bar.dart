import 'package:flutter/material.dart';
import '../../styling/styling.dart';
import '../calendar.dart';
import '../medication_widget/medication_widget_tablet.dart';

class TabletNavBar extends StatefulWidget {
  const TabletNavBar({super.key});

  @override
  State<TabletNavBar> createState() => _TabletNavBarState();
}

class _TabletNavBarState extends State<TabletNavBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // create a navigation rail
        NavigationRail(
          groupAlignment: 0.0,
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          labelType: NavigationRailLabelType.all,
          backgroundColor: Styling.navBarBackgroundColour,
          destinations: const <NavigationRailDestination>[
            // navigation destinations
            NavigationRailDestination(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
              icon: Icon(Icons.medication_outlined, size: 45),
              selectedIcon: Icon(
                Icons.medication_outlined,
                size: 45,
              ),
              label: Text(
                'Prescriptions',
                textDirection: TextDirection.ltr,
              ),
            ),
            NavigationRailDestination(
              icon: Icon(
                Icons.calendar_month_outlined,
                size: 45,
              ),
              selectedIcon: Icon(
                Icons.calendar_month_outlined,
                size: 45,
              ),
              label: Text('Appointments'),
            ),
          ],
          selectedIconTheme: const IconThemeData(color: Styling.iconColour),
          unselectedIconTheme: const IconThemeData(color: Styling.textColour),
          selectedLabelTextStyle: const TextStyle(color: Styling.textColour),
          unselectedLabelTextStyle: const TextStyle(color: Styling.textColour),
        ),
        const VerticalDivider(
          thickness: 0.0,
          width: 5,
          color: Colors.transparent,
        ),
        Expanded(
            child: Container(
          decoration: const BoxDecoration(color: Styling.mainBackgroundColourTest, borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          child: Center(
            child: <Widget>[
              const MedicationWidgetTablet(),
              const CalendarWidget(),
            ][_selectedIndex],
          ),
        ))
      ],
    );
  }
}
