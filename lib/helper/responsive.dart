import 'package:flutter/material.dart';

enum ScreenSize {
  small,
  medium,
  large,
}

//* most used screen sizes
const int _smallScreenSize = 360;
const int _mediumScreenSize = 768;
const int _largeScreenSize = 1366;

bool isSmallScreen(Size size) => size.width < _mediumScreenSize;
bool isMediumScreen(Size size) =>
    size.width >= _mediumScreenSize && size.width < _largeScreenSize;
bool isLargeScreen(Size size) => size.width <= _largeScreenSize;

extension GetScreenSize on BuildContext {
  ScreenSize get screenSize {
    final size = MediaQuery.of(this).size;
    if (isSmallScreen(size)) {
      return ScreenSize.small;
    } else if (isMediumScreen(size)) {
      return ScreenSize.medium;
    } else if (isLargeScreen(size)) {
      return ScreenSize.large;
    } else {
      return ScreenSize.large;
    }
  }
}
