import 'package:flutter/material.dart';

const int lagreScreenSize = 1366;
const int mediumScreenSize = 768;
const int smallScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget smallScreen;
  final Widget? customScreen;

  const ResponsiveWidget({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    required this.smallScreen,
    this.customScreen,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, sizes) {
        double width = sizes.maxWidth;
        if (width >= lagreScreenSize) {
          return Scaffold(body: largeScreen);
        } else if (width < lagreScreenSize && width >= mediumScreenSize) {
          return Scaffold(
            body: mediumScreen ?? largeScreen,
          );
        } else {
          return Scaffold(
            body: smallScreen,
          );
        }
      },
    );
  }
}

