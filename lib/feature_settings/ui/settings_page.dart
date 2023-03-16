import 'package:flutter/material.dart';
import 'theme_selector_view.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(title: const Text('Settings')),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: const [
              ThemeSelectorView(),
            ],
          ),
        ),
      ],
    );
  }
}
