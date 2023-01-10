import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/service_locator.dart';
import 'bloc/settings_bloc.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingsBloc>(
      create: (context) => sl(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Builder(
            builder: (context) {
              return Column(
                children: [
                  AppBar(title: Text('Coming Soon')),
                  if (!kReleaseMode) ...{
                    ElevatedButton(
                      onPressed: () {
                        context.read<SettingsBloc>()
                            .add(SettingsEvent.clearLikes());
                      },
                      child: Text('Clear Likes'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<SettingsBloc>()
                            .add(SettingsEvent.clearDisLikes());
                      },
                      child: Text('Clear Dislikes'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<SettingsBloc>()
                            .add(SettingsEvent.clearMessages());
                      },
                      child: Text('Clear Messages'),
                    ),
                  },
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
