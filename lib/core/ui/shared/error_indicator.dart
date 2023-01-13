import 'package:flutter/material.dart';

class ErrorIndicator extends StatelessWidget {
  const ErrorIndicator({
    Key? key,
    String? error,
  })  : this.error = error ?? 'Something went wrong',
        super(
          key: key,
        );

  final String error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Center(
          child: Text(error),
        ),
      ),
    );
  }
}
