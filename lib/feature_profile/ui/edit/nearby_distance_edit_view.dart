import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_profile/ui/edit/nearby_distance_slider.dart';

import '../../../feature_auth/data/model/model.dart';

class NearbyDistanceEditView extends StatelessWidget {
  const NearbyDistanceEditView({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  Future<void> _updateNearbyDistance(double nearybyDistance) async {
    final _updateQuery = FirebaseFirestore.instance
        .collection(col_users)
        .doc(appUser.userId)
        .withConverter<AppUser>(
          fromFirestore: (snapshot, options) => AppUser.empty(),
          toFirestore: (value, _) => AppUserModel.fromEntity(value).toJson(),
        );

    await _updateQuery.set(appUser.copyWith(
      nearbyDistance: nearybyDistance.toInt(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        caption(context, 'Suggest me people inside'),
        Row(
          children: [
            mediumBody(context, '${appUser.nearbyDistance.toString()} Km'),
            Expanded(
              child: NearbyDistanceSlider(
                min: 1,
                max: 10,
                initial: appUser.nearbyDistance.toDouble(),
                onDistanceSelected: _updateNearbyDistance,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
