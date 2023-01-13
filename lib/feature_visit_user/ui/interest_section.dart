import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/core.dart';

class InterestSection extends StatelessWidget {
  const InterestSection({
    Key? key,
    required this.appUser,
  }) : super(key: key);

  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();

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