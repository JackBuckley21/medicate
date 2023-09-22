import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medicate/styling/styling.dart';
import 'package:medicate/widgets/tablet_widgets/add_button_tablet.dart';

final tablets = SvgPicture.asset('assets/medication_types_icon/tablets.svg');

class MedicationWidgetTablet extends StatefulWidget {
  const MedicationWidgetTablet({Key? key}) : super(key: key);

  @override
  State<MedicationWidgetTablet> createState() => _MedicationWidgetTablet();
}

class _MedicationWidgetTablet extends State<MedicationWidgetTablet> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 4,
        padding: const EdgeInsets.only(top: 5),
        children: List.generate(6, (index) {
          if (index == 5) {
            return Container(padding: const EdgeInsets.all(50), child: const AddButtonTablet());
          } else {
            return Container(
                padding: const EdgeInsets.only(top: 5),
                child: Center(
                  child: Container(
                    width: 200,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Styling.widgetBackgroundColour,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: const [
                        BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 5, offset: Offset(5, 6)),
                      ],
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.only(left: 25, top: 20),
                              child: tablets,
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              padding: const EdgeInsets.only(right: 15, top: 10),
                              child: IconButton(
                                icon: const Icon(Icons.edit_outlined),
                                color: Styling.textColour,
                                iconSize: 30,
                                onPressed: () {
                                  // Do something when the bell icon is pressed.
                                },
                              ),
                            )
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 20),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            'Sertraline',
                            style: TextStyle(fontSize: 30, color: Styling.textColour),
                          ),
                        ),
                        Flexible(
                            child: ListView(
                          padding: const EdgeInsets.only(left: 20),
                          children: const [
                            Text('100mg Tablets', style: TextStyle(color: Styling.textColour)),
                            Text('56 Tablets', style: TextStyle(color: Styling.textColour)),
                            Text('Daily - 9:00 am', style: TextStyle(color: Styling.textColour)),
                            Text('Reminder: Enabled', style: TextStyle(color: Styling.textColour)),
                          ],
                        )),
                      ],
                    ),
                  ),
                ));
          }
        }));
  }
}
