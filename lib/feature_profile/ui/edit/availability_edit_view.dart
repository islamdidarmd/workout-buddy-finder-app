import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../../core/core.dart';

class AvailabilityEditView extends StatelessWidget {
  const AvailabilityEditView({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  Future<void> _updateAvailability(String? availability) async {
    if (availability == null || availability.isEmpty) {
      return;
    }

    final _updateQuery =
        FirebaseFirestore.instance.collection(col_users).doc(appUser.userId);

    await _updateQuery.update({
      field_availability: availability,
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: [
        DropdownMenuItem(value: '', child: Text('Select Availability')),
        DropdownMenuItem(value: 'daily1hr', child: Text('Daily 1 hr')),
        DropdownMenuItem(value: 'daily2hr', child: Text('Daily 2 hr')),
        DropdownMenuItem(value: 'daily3hr', child: Text('Daily 3 hr')),
      ],
      value: appUser.availability,
      onChanged: _updateAvailability,
      decoration: InputDecoration(
        labelText: 'Availability',
        border: OutlineInputBorder(),
      ),
    );
  }
}
