import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medicate/styling/styling.dart';
import '../widgets/tablet_widgets/tablet_nav_bar.dart';

final logo = SvgPicture.asset('assets/nav_bar/logo.svg');

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffold();
}

class _TabletScaffold extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Styling.navBarBackgroundColour,
          shadowColor: Colors.black38,
          titleTextStyle: const TextStyle(color: Styling.textColour, fontSize: 25, fontFamily: 'Roboto'),
          title: const Text('Medicate'),
          titleSpacing: 8,
          leading: Padding(padding: const EdgeInsets.only(left: 10), child: logo),
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
        body: const TabletNavBar());
  }
}
