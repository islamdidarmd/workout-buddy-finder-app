import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraintType) {
        final size = constraintType.biggest;

        return CircleAvatar(
          radius: (size.width/3) / 2,
          backgroundColor: Theme.of(context).primaryColor,
        );
      },
    );
  }
}
