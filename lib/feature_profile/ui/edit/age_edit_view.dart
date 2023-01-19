import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_profile/ui/fomatters/datetime_formatter.dart';

import '../../../feature_auth/data/model/model.dart';

class AgeEditView extends StatelessWidget {
  const AgeEditView({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  Future<void> _updateBirthDate(BuildContext context) async {
    final pickedDateTime = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(Duration(days: 365 * 18)),
      firstDate: DateTime(1923),
      lastDate: DateTime.now().subtract(Duration(days: 365 * 18)),
      helpText: 'Select you BirthDay',
    );

    if (pickedDateTime == null) {
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
      birthdate: pickedDateTime,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        caption(context, 'Birthday'),
        const HorizontalSpacing(),
        Row(
          children: [
            Expanded(
              child: mediumBody(
                context,
                appUser.birthdate.formatTo(birthDateFormat),
              ),
            ),
            InkWell(
              onTap: () => _updateBirthDate(context),
              child: Icon(FontAwesomeIcons.pen),
            ),
          ],
        ),
      ],
    );
  }
}
