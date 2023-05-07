import 'package:flutter/material.dart';
import '../../core.dart';

class UserInterestSection extends StatelessWidget {
  const UserInterestSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mediumBoldTitle(context, 'Interests'),
              const SizedBox(height: 8),
              Wrap(
                spacing: 4,
                children: appUser.interestList
                    .map((id) => InterestChip(interestId: id))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
