import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_buddy_finder/feature_profile/ui/bloc/profile_bloc.dart';

import '../../../core/core.dart';
import '../view_model/view_model.dart';

class InterestListItem extends StatefulWidget {
  const InterestListItem({
    Key? key,
    required this.interestViewModel,
  }) : super(key: key);

  final InterestViewModel interestViewModel;

  @override
  State<InterestListItem> createState() => _InterestListItemState();
}

class _InterestListItemState extends State<InterestListItem> {
  bool _isSelected = false;

  @override
  void initState() {
    super.initState();
    _isSelected = widget.interestViewModel.isSelected;
  }

  void _onChanged(BuildContext context, bool? isSelected) {
    setState(() {
      _isSelected = isSelected ?? false;
    });

    final profileBloc = context.read<ProfileBloc>();
    final appUser = context.read<AppUser>();

    if (isSelected == true) {
      profileBloc
          .add(ProfileEvent.addInterest(appUser, widget.interestViewModel));
    } else {
      profileBloc
          .add(ProfileEvent.removeInterest(appUser, widget.interestViewModel));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CheckboxListTile(
        value: _isSelected,
        title: Row(
          children: [
            CircleAvatar(
              radius: 12,
              foregroundImage:
                  Image.network(widget.interestViewModel.icon).image,
            ),
            const SizedBox(width: 8),
            Text(widget.interestViewModel.name),
          ],
        ),
        onChanged: (isSelected) => _onChanged(context, isSelected),
      ),
    );
  }
}
