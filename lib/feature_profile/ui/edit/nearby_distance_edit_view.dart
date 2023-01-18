import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';

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
    double sliderSelectedValue = appUser.nearbyDistance.toDouble();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        caption(context, 'Suggest me people inside'),
        Row(
          children: [
            mediumBody(context, '${appUser.nearbyDistance.toString()} Km'),
            Expanded(
              child: StatefulBuilder(
                builder: (
                  BuildContext context,
                  void Function(void Function()) setState,
                ) {
                  return Slider(
                    label: '$sliderSelectedValue Km',
                    value: sliderSelectedValue,
                    divisions: 9,
                    min: 1,
                    max: 10,
                    onChanged: (value) {
                      setState(() {
                        sliderSelectedValue = value;
                      });
                    },
                    onChangeEnd: _updateNearbyDistance,
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
