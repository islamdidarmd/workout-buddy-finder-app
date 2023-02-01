import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';

class UserAgeWithGenderView extends StatelessWidget {
  const UserAgeWithGenderView({
    Key? key,
    required this.appUser,
  }) : super(key: key);
  final AppUser appUser;

  int _calculateAgeFromBirthDay(DateTime? birthday) {
    if (birthday == null) return -1;
    final diff = DateTime.now().difference(birthday).inDays;
    final age = diff / 365;

    return age.toInt();
  }

  String _mapGender(String genderEnum) {
    if (genderEnum == "male") {
      return "Male";
    } else if (genderEnum == "female") {
      return "Female";
    } else if (genderEnum == "other") {
      return "Other";
    }

    return "";
  }

  @override
  Widget build(BuildContext context) {
    final buffer = StringBuffer();
    final age = _calculateAgeFromBirthDay(appUser.birthdate);
    final gender = _mapGender(appUser.gender);
    if (age != -1) {
      buffer
        ..write(age.toString())
        ..write(",");
    }
    if (gender.isNotEmpty) {
      buffer.write(gender);
    }

    return lightBody(context, buffer.toString());
  }
}
