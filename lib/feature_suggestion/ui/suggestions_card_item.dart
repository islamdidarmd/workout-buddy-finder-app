import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import '../../core/core.dart';
import '../domain/domain.dart';

class SuggestionsCardItem extends StatelessWidget {
  final double overlayColorOpacity = 0.4;
  final Suggestion suggestion;

  const SuggestionsCardItem({
    Key? key,
    required this.suggestion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final radius = size.width * 0.08;

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(radius),
            image: DecorationImage(
              image: NetworkImage(suggestion.profilePicture),
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
              stops: [
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
                avatar: Icon(FontAwesomeIcons.locationDot),
                label: lightBody(context, getDistance(context)),
              )
            ],
          ),
        ),
      ],
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
    return '${distance.toStringAsFixed(2)} Km';
  }
}
