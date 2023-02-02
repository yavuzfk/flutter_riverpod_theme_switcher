import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/constant/theme_switcher.dart';

class WelcomePage extends ConsumerWidget {
  const WelcomePage({Key? key}) : super(key: key);

  final String appbarTitle = "ANASAYFA";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
        actions: [
          CupertinoSwitch(
            value: ref.watch(themeProvider).isDarkTheme,
            activeColor: CupertinoColors.activeOrange,
            trackColor: CupertinoColors.darkBackgroundGray,
            onChanged: (bool? value) {
              ref.watch(themeProvider).switchTheme();
            },
          )
        ],
      ),
    );
  }
}
