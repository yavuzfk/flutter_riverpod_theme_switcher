import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/constant/project_themes.dart';
import 'package:riverpod_example/constant/theme_switcher.dart';
import 'package:riverpod_example/screens/welcome_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ref.watch(themeProvider).themeMode,
      theme: ProjectThemes.lightTheme,
      darkTheme: ProjectThemes.darkTheme,
      home: const WelcomePage(),
    );
  }
}
