import 'package:cached_network_image/cached_network_image.dart';
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
    return Container(
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
                children: appUser.interestList.map((interest) {
                  return Chip(
                    avatar: CircleAvatar(
                      foregroundImage:
                          CachedNetworkImageProvider(interest.icon),
                      radius: 12,
                    ),
                    label: Text(interest.name),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
