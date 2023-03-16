import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import '../../../core/core.dart';

import '../../../feature_location/location.dart';

class LocationUpdateView extends StatelessWidget {
  const LocationUpdateView({
    Key? key,
    required this.appUser,
  }) : super(key: key);
  final AppUser appUser;

  Future<void> _updateLocation(BuildContext context) async {
    final updateQuery = FirebaseFirestore.instance
        .collection(col_users)
        .doc(appUser.userId)
        .withConverter<AppUser>(
          fromFirestore: (snapshot, options) => AppUser.empty(),
          toFirestore: (value, _) => value.toJson(),
        );

    final Position? location = await showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          content: LocationRetrieverDialog(),
        );
      },
    );

    if (location != null) {
      await updateQuery.set(appUser.copyWith(
        lat: location.latitude,
        long: location.longitude,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        caption(context, 'Location'),
        const HorizontalSpacing(),
        Row(
          children: [
            Expanded(child: LocationText(lat: appUser.lat, long: appUser.long)),
            InkWell(
              onTap: () => _updateLocation(context),
              child: const Icon(FontAwesomeIcons.arrowsRotate),
            ),
          ],
        ),
      ],
    );
  }
}
