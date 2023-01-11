import 'package:flutter/material.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SizedBox.expand(
        child: Center(
          child: Text('Something went wrong'),
        ),
      ),
    );
  }
}
