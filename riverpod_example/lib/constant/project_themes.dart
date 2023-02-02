import 'package:flutter/material.dart';

class ProjectThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade900,
      appBarTheme: AppBarTheme(
        color: Colors.grey.shade900,
        shadowColor: Colors.blueAccent,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 79, 159, 233),
        ),
      ),
      textTheme: const TextTheme());

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      // color: Colors.black,
      shadowColor: Colors.blueAccent,
      iconTheme: IconThemeData(
        color: Color.fromARGB(255, 219, 219, 224),
      ),
    ),
  );
}
