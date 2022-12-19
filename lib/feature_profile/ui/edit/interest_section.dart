import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/core.dart';
import '../../../feature_auth/domain/domain.dart';
import 'interest_list_item.dart';

import '../bloc/profile_bloc.dart';

class InterestSection extends StatelessWidget {
  const InterestSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: mediumBoldTitle(context, 'Interests'),
            ),
            BlocBuilder<ProfileBloc, ProfileState>(
              buildWhen: (previous, current) => current.maybeWhen(
                interestsLoaded: (_) => true,
                orElse: () => false,
              ),
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => CircularProgressIndicator(),
                  interestsLoaded: (interestList) {
                    return Wrap(
                      children: interestList
                          .map((e) => InterestListItem(
                                appUser: appUser,
                                interestViewModel: e,
                              ))
                          .toList(),
                    );
                  },
                  orElse: () => const SizedBox(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
