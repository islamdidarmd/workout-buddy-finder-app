import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../core.dart';

class InterestChip extends HookWidget {
  const InterestChip({
    Key? key,
    required this.interestId,
  }) : super(key: key);
  final String interestId;

  @override
  Widget build(BuildContext context) {
    final interestQuery = FirebaseFirestore.instance
        .collection(col_interests)
        .doc(interestId)
        .withConverter(
          fromFirestore: (snapshot, _) => Interest.fromJson(snapshot.data()!),
          toFirestore: (value, _) => value.toJson(),
        );
    final interestFuture = useMemoized(() => interestQuery.get());
    final interestSnapshot = useFuture(interestFuture);

    if (interestSnapshot.hasData) {
      final interest = interestSnapshot.requireData.data()!;

      return Chip(
        avatar: CircleAvatar(
          foregroundImage: CachedNetworkImageProvider(interest.icon),
          radius: 12,
        ),
        label: Text(interest.name),
      ).animate().fadeIn(duration: 400.milliseconds);
    }

    return const SizedBox();
  }
}
