import 'package:flutter/material.dart';

import '../themes/color_schemes.g.dart';

class CustomStyles {
  static  ButtonStyle buttonStyle =  ButtonStyle(
                      shape: MaterialStateProperty.resolveWith(
                        (states) {
                          return RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                              width: 0.3,
                              color: flexSchemeDark.onPrimary,
                            ),
                          );
                        },
                      ),
                    );
}