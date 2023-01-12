import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';
import 'package:workout_buddy_finder/feature_messaging/domain/domain.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
    required this.chatRoomId,
  }) : super(key: key);

  final String chatRoomId;

  @override
  Widget build(BuildContext context) {
    final _roomInfoQuery = FirebaseFirestore.instance
        .collection(col_messages)
        .doc(chatRoomId)
        .withConverter(
          fromFirestore: (snapshot, _) => ChatRoom.fromJson(snapshot.data()!),
          toFirestore: (value, options) => value.toJson(),
        );

    return Container();
  }
}
