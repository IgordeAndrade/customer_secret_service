import 'dart:ui';

import 'package:flex_color_scheme/flex_color_scheme.dart';

import 'color_schemes.g.dart';

get lightTheme => FlexThemeData.light(
      scheme: FlexScheme.ebonyClay,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 9,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 10,
        blendOnColors: false,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      // To use the playground font, add GoogleFonts package and uncomment
      // fontFamily: GoogleFonts.notoSans().fontFamily,
    );

get darkTheme => FlexThemeData.dark(
      scheme: FlexScheme.ebonyClay,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 15,
      subThemesData: const FlexSubThemesData(
        blendOnLevel: 20,
      ),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
      useMaterial3: true,
      swapLegacyOnMaterial3: true,
      colorScheme: flexSchemeDark,
      background: flexSchemeDark.background,
      scaffoldBackground: const Color.fromARGB(206, 14, 14, 19),
      // To use the Playground font, add GoogleFonts package and uncomment
      // fontFamily: GoogleFonts.notoSans().fontFamily,
    );
