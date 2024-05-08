import 'package:flutter/material.dart';

// ignore: camel_case_types
class responsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;

  const responsiveLayout(
      {super.key, required this.mobileScaffold, required this.tabletScaffold});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.minWidth < 500) {
          return mobileScaffold;
        } else {
          return tabletScaffold;
        }
      },
    );
  }
}
