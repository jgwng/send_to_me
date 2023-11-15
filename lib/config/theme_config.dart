import 'dart:ui';
import 'package:flutter/material.dart';

class AppThemes{
  AppThemes._();

  static const Color mainColor = Color.fromRGBO(47, 46, 51, 1.0);
  static const Color pointColor = Color.fromRGBO(110, 255, 0, 1.0);
  static const Color pointColor2 = Color.fromRGBO(242, 198, 65, 1.0);
  static const Color inActiveColor = Color.fromRGBO(174, 174, 174, 1.0);

  static const defaultTextColor = Color.fromRGBO(47, 46, 51, 1.0);
  static const backgroundAppBarColor = mainColor;
  static const backgroundColor = mainColor;
  static const defaultTextStyle = TextStyle(
    fontSize: 12,
    fontFamily: 'Noto Sans SC',
    fontFamilyFallback: ['Noto Sans SC'],
    color: Colors.white,
  );

  static  ThemeData mainTheme = ThemeData(
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    hoverColor: Colors.transparent,
    primaryColor: Colors.white,
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    fontFamilyFallback: const ['Noto Sans SC'],
    canvasColor: Colors.white,
    pageTransitionsTheme:  const PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>
      {
        TargetPlatform.android: NoAnimationPageTransitionsBuilder(),
        TargetPlatform.iOS: NoAnimationPageTransitionsBuilder(),
        TargetPlatform.linux: NoAnimationPageTransitionsBuilder(),
        TargetPlatform.macOS: NoAnimationPageTransitionsBuilder(),
        TargetPlatform.windows: NoAnimationPageTransitionsBuilder(),
      },
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        alignment: Alignment.centerLeft,
        textStyle: defaultTextStyle,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: defaultTextStyle,
      ),
    ),
  );
}

class NoAnimationPageTransitionsBuilder extends PageTransitionsBuilder {
  const NoAnimationPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
      PageRoute<T> route,
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
      ) {
    return child;
  }
}