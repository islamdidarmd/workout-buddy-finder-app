import 'package:flutter/material.dart';

class EmptySuggestion extends StatelessWidget {
  const EmptySuggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('No nearby suggestions found'),
    );
  }
}
