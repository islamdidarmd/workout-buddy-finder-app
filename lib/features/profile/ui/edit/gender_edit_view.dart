import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';

class GenderEditView extends StatelessWidget {
  const GenderEditView({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  Future<void> _updateGender(String? gender) async {
    if (gender == null || gender.isEmpty) {
      return;
    }

    final query =
        FirebaseFirestore.instance.collection(col_users).doc(appUser.userId);

    await query.update({
      field_gender: gender,
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: const [
        DropdownMenuItem(value: '', child: Text('Select Gender')),
        DropdownMenuItem(value: 'male', child: Text('Male')),
        DropdownMenuItem(value: 'female', child: Text('Female')),
        DropdownMenuItem(value: 'other', child: Text('Other')),
      ],
      value: appUser.gender,
      onChanged: _updateGender,
      decoration:
          const InputDecoration(labelText: 'Gender', border: OutlineInputBorder()),
    );
  }
}
