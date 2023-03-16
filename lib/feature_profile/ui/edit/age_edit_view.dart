import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_profile/ui/edit/birth_day_view.dart';

class AgeEditView extends StatelessWidget {
  const AgeEditView({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  Future<void> _updateBirthDate(BuildContext context) async {
    final pickedDateTime = await showDatePicker(
      context: context,
      initialDate: DateTime.now().subtract(const Duration(days: 365 * 18)),
      firstDate: DateTime(1923),
      lastDate: DateTime.now().subtract(const Duration(days: 365 * 18)),
      helpText: 'Select you BirthDay',
    );

    if (pickedDateTime == null) {
      return;
    }

    final updateQuery = FirebaseFirestore.instance
        .collection(col_users)
        .doc(appUser.userId)
        .withConverter<AppUser>(
          fromFirestore: (snapshot, options) => AppUser.empty(),
          toFirestore: (value, _) => value.toJson(),
        );

    await updateQuery.set(appUser.copyWith(
      birthdate: pickedDateTime,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        caption(context, 'Birthday'),
        const HorizontalSpacing(),
        Row(children: [
          Expanded(child: BirthDayView(appUser: appUser)),
          InkWell(
            child: const Icon(FontAwesomeIcons.pen),
            onTap: () => _updateBirthDate(context),
          ),
        ]),
      ],
    );
  }
}
