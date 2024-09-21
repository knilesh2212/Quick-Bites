import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.grey.shade600, // A soft, pleasing blue
    secondary: Colors.grey.shade300, // A lighter blue for contrast
    tertiary: Colors.grey.shade200, // A very light grey for subtle elements
    inversePrimary: Colors.grey.shade700, // A deeper blue for inverse elements
  ),
);
