import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_buddy_finder/feature_profile/ui/bloc/profile_bloc.dart';

import '../../../core/core.dart';
import '../../../feature_auth/domain/domain.dart';
import '../view_model/view_model.dart';

class InterestListItem extends StatelessWidget {
  const InterestListItem({
    Key? key,
    required this.appUser,
    required this.interestViewModel,
  }) : super(key: key);

  final AppUser appUser;
  final InterestViewModel interestViewModel;

  void _onChanged(BuildContext context, bool? isSelected) {
    final profileBloc = context.read<ProfileBloc>();

    if (isSelected == true) {
      profileBloc.add(ProfileEvent.addInterest(appUser, interestViewModel));
    } else {
      profileBloc.add(ProfileEvent.removeInterest(appUser,interestViewModel));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CheckboxListTile(
        value: interestViewModel.isSelected,
        title: Row(
          children: [
            CircleAvatar(
              radius: 12,
              foregroundImage: Image.network(interestViewModel.icon).image,
            ),
            const SizedBox(width: 8),
            Text(interestViewModel.name),
          ],
        ),
        onChanged: (isSelected) => _onChanged(context, isSelected),
      ),
    );
  }
}
