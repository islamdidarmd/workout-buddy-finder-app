import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_auth/data/model/model.dart';
import '../../domain/domain.dart';

class MessageListItem extends HookWidget {
  const MessageListItem({
    Key? key,
    required this.chat,
    required this.appUser,
  }) : super(key: key);

  final ChatRoom chat;
  final AppUser appUser;
  final double _height = 60.0;

  Future<List<ChatUser>> get _participants async {
    final participants = <ChatUser>[];
    final loggedInUser = appUser;

    for (String userId in chat.participants) {
      if (userId == loggedInUser.userId) {
        continue;
      }

      final profileQuery = FirebaseFirestore.instance
          .collection(col_users)
          .doc(userId)
          .withConverter(
            fromFirestore: (snapshot, _) =>
                ChatUser.fromJson(snapshot.data()!),
            toFirestore: (_, __) => {},
          );
      final appUser = await profileQuery.get();
      participants.add(appUser.data()!);
    }

    return participants;
  }

  @override
  Widget build(BuildContext context) {
    final participantsFuture = useMemoized(() => _participants);
    final participantsSnapshot = useFuture(participantsFuture);
    if (participantsSnapshot.hasData) {
      final participant = participantsSnapshot.requireData.first;

      return Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
          child: SizedBox(
            height: _height,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  foregroundImage:
                      CachedNetworkImageProvider(participant.profilePicture),
                ),
                const SizedBox(width: 16),
                mediumBody(context, participant.name),
              ],
            ),
          ),
        ),
      );
    }

    return Container();
  }
}
