import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'nearby_distance_slider.dart';


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
          toFirestore: (value, _) => value.toJson(),
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
        caption(context, 'Suggest me people inside (1Km - 10Km)'),
        Row(
          children: [
            lightBody(context, '${appUser.nearbyDistance.toString()} Km'),
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
