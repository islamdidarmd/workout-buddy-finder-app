import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import '../../core/core.dart';
import '../domain/entity/entities.dart';

class SuggestionsCardItem extends StatelessWidget {
  final double overlayColorOpacity = 0.4;
  final Suggestion suggestion;

  const SuggestionsCardItem({
    Key? key,
    required this.suggestion,
    required this.onOpenProfile,
  }) : super(key: key);

  final void Function(String userId) onOpenProfile;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final radius = size.width * 0.08;

    return InkWell(
      onTap: () => onOpenProfile(suggestion.userId),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(radius),
              color: Colors.white,
              image: DecorationImage(
                image: CachedNetworkImageProvider(suggestion.profilePicture),
                fit: BoxFit.cover,
              ),
            ),
            foregroundDecoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(radius),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Theme.of(context).shadowColor,
                  Colors.transparent,
                ],
                stops: const [
                  0.0,
                  0.5,
                ],
              ),
            ),
          ),
          Positioned(
            left: 16,
            bottom: 65,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mediumTitle(context, suggestion.name, color: Colors.white),
                Chip(
                  avatar: const Icon(FontAwesomeIcons.locationDot, size: 16),
                  label: lightBody(context, getDistance(context)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String getDistance(BuildContext context) {
    final appUser = context.read<AppUser>();
    final distance = Geolocator.distanceBetween(
          appUser.lat,
          appUser.long,
          suggestion.lat,
          suggestion.long,
        ) /
        1000;

    return '${distance.floor()} Km';
  }
}
