import 'package:flutter/material.dart';

import 'color_schemes.g.dart';

ThemeData get lightTheme => ThemeData(
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: lightColorScheme.primary,
  ),
  useMaterial3: true,
  colorScheme: lightColorScheme,
);

ThemeData get darkTheme => ThemeData(
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: darkColorScheme.primary,
  ),
  useMaterial3: true,
  colorScheme: darkColorScheme,
);
