import 'package:flutter/material.dart';

class ActivityPermissionRequiredView extends StatelessWidget {
  const ActivityPermissionRequiredView({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Text(
          'Permission to Read Activity Data is required. Tap to approve permission.',
        ),
      ),
    );
  }
}
