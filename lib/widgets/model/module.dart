import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:medicate/styling/styling.dart';
import 'package:medicate/widgets/model/alarm_switch.dart';

class PopUp extends StatelessWidget {
  const PopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 3,
          sigmaY: 3,
        ),
        child: AlertDialog(
          shadowColor: Colors.black12,
          title: const Text(
            'New Medication',
            textAlign: TextAlign.center,
            style: TextStyle(color: Styling.textColour),
          ),
          content: Container(
              padding: const EdgeInsets.all(10),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Medication Name',
                      hintStyle: TextStyle(color: Colors.black26),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(50, 50, 93, 80)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Styling.iconColour),
                      ),
                    ),
                    style: TextStyle(color: Styling.textColour),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Medication Dosage',
                      hintStyle: TextStyle(color: Colors.black26),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(50, 50, 93, 80)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Styling.iconColour),
                      ),
                    ),
                    style: TextStyle(color: Styling.textColour),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Course Duration',
                      hintStyle: TextStyle(color: Colors.black26),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color.fromRGBO(50, 50, 93, 80)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Styling.iconColour),
                      ),
                    ),
                    style: TextStyle(color: Styling.textColour),
                  ),
                ],
              )),
          actions: <Widget>[
            Stack(children: [
              Container(
                alignment: Alignment.center,
                child: const AlarmSwitch(),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Set a reminder?',
                  style: TextStyle(color: Styling.textColour),
                ),
              ),
              Container(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  )),
            ])
          ],
        ));
  }
}
