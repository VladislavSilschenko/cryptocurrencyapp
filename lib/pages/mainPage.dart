import 'package:flutter/material.dart';
import 'package:testtask/settingsProvider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.settings});
  final Settingsprovider settings;


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('adadad'), actions: [
      AnimatedBuilder(
        animation: widget.settings,
        builder: (context, _) {
          return IconButton(
            onPressed: widget.settings.toggleTheme,
            icon: Icon(
              widget.settings.isDark
                  ? Icons.light_mode
                  : Icons.dark_mode,
            ),
          );
        },
      ),
    ],));
  }
}
