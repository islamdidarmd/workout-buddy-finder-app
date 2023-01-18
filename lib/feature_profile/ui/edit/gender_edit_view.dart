import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../../../feature_auth/data/model/model.dart';

class GenderEditView extends StatelessWidget {
  const GenderEditView({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  Future<void> _updateGender(String? gender) async {
    if (gender == null) {
      return;
    }

    final _updateQuery = FirebaseFirestore.instance
        .collection(col_users)
        .doc(appUser.userId)
        .withConverter<AppUser>(
          fromFirestore: (snapshot, options) => AppUser.empty(),
          toFirestore: (value, _) => AppUserModel.fromEntity(value).toJson(),
        );

    await _updateQuery.set(appUser.copyWith(
      gender: gender,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: appUser.gender,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Gender',
      ),
      items: [
        DropdownMenuItem(
          child: Text('Male'),
          value: 'male',
        ),
        DropdownMenuItem(
          child: Text('Female'),
          value: 'female',
        ),
        DropdownMenuItem(
          child: Text('Other'),
          value: 'other',
        ),
      ],
      onChanged: _updateGender,
    );
  }
}
