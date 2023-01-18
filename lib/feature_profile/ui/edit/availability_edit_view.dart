import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';

import '../../../feature_auth/data/model/model.dart';

class AvailabilityEditView extends StatelessWidget {
  const AvailabilityEditView({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  Future<void> _updateAvailability(String? availability) async {
    if (availability == null) {
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
      availability: availability,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: appUser.availability,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Availability',
      ),
      items: [
        DropdownMenuItem(
          child: Text('Daily 1 hr'),
          value: 'daily1hr',
        ),
        DropdownMenuItem(
          child: Text('Daily 2 hr'),
          value: 'daily2hr',
        ),
        DropdownMenuItem(
          child: Text('Daily 3 hr'),
          value: 'daily3hr',
        ),
      ],
      onChanged: _updateAvailability,
    );
  }
}
