import 'package:flutter/material.dart';
import 'package:testtask/pages/mainPage.dart';
import 'package:testtask/settingsProvider.dart';
import 'package:testtask/theme/theme.dart';


void main() {
  final settings = Settingsprovider();
  runApp(MyApp(settings: settings,));



}
class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.settings});
  final Settingsprovider settings;


  @override
  Widget build(BuildContext context) {

    return AnimatedBuilder(
      animation: settings,
      builder: (context, _) {
        return MaterialApp(
          initialRoute: '/',
          routes: {
            '/': (context) => MainPage(settings: settings),
          },
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: settings.isDark ? ThemeMode.dark : ThemeMode.light,
        );
      },
    );
  }
}

