import 'package:flutter/material.dart';
import 'package:medicate/styling/styling.dart';

class AlarmSwitch extends StatefulWidget {
  const AlarmSwitch({super.key});

  @override
  State<AlarmSwitch> createState() => _AlarmSwitch();
}

class _AlarmSwitch extends State<AlarmSwitch> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      activeTrackColor: Colors.transparent,
      inactiveTrackColor: Colors.transparent,

      // This bool value toggles the switch.
      trackOutlineColor: MaterialStateProperty.resolveWith(
        (final Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Styling.iconColour;
          }

          return Styling.textColour;
        },
      ),
      thumbColor: MaterialStateProperty.resolveWith(
        (final Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Styling.iconColour;
          }

          return Styling.textColour;
        },
      ),
      value: light,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
