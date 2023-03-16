import 'package:flutter/material.dart';
import '../../theme/theme_manager.dart';

class ThemeSelectorView extends StatelessWidget {
  const ThemeSelectorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String selected;
    final themeManager = ThemeManager.instance;

    switch (themeManager.themeMode) {
      case ThemeMode.system:
        selected = 'System';
        break;
      case ThemeMode.light:
        selected = 'Light';
        break;
      case ThemeMode.dark:
        selected = 'Dark';
        break;
      default:
        selected = 'System';
    }

    return ListTile(
      title: const Text('App Theme'),
      trailing: DropdownButton<String>(
        value: selected,
        items: <String>['Light', 'Dark', 'System']
            .map((String value) => DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        ))
            .toList(),
        onChanged: (value) {
          ThemeMode newlySelected = ThemeMode.system;
          switch (value) {
            case 'System':
              newlySelected = ThemeMode.system;
              break;
            case 'Light':
              newlySelected = ThemeMode.light;
              break;
            case 'Dark':
              newlySelected = ThemeMode.dark;
              break;
          }

          themeManager.switchTo(newlySelected);
        },
        underline: Container(),
      ),
    );
  }
}
