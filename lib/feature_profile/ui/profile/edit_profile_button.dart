import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({
    Key? key,
    required this.onEditProfile,
  }) : super(key: key);

  final Function() onEditProfile;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onEditProfile,
      heroTag: 'edit-profile',
      label: Text('Edit Profile'),
      icon: const Icon(FontAwesomeIcons.penToSquare),
    );
  }
}