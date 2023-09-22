import 'package:flutter/material.dart';
import 'package:medicate/responsive/responsive_layout.dart';
import 'package:medicate/responsive/tablet_scaffold.dart';
import 'responsive/mobile_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ResponsiveLayout(mobileScaffold: MobileScaffold(), tabletScaffold: TabletScaffold()),
    );
  }
}
