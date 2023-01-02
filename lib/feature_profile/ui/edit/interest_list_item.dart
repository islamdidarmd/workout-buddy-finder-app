import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:workout_buddy_finder/feature_profile/ui/bloc/profile_bloc.dart';

import '../../../core/core.dart';
import '../view_model/view_model.dart';

class InterestListItem extends HookWidget {
  const InterestListItem({
    Key? key,
    required this.interestViewModel,
  }) : super(key: key);

  final InterestViewModel interestViewModel;

  void _onChanged(BuildContext context, bool? isSelected) {
    final profileBloc = context.read<ProfileBloc>();
    final appUser = context.read<AppUser>();

    if (isSelected == true) {
      profileBloc.add(ProfileEvent.addInterest(appUser, interestViewModel));
    } else {
      profileBloc.add(ProfileEvent.removeInterest(appUser, interestViewModel));
    }
  }

  @override
  Widget build(BuildContext context) {
    final checkboxValue = useState(interestViewModel.isSelected);

    return Container(
      child: CheckboxListTile(
        value: checkboxValue.value,
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
        onChanged: (isSelected) {
          checkboxValue.value = isSelected ?? false;
          _onChanged(context, isSelected);
        },
      ),
    );
  }
}
