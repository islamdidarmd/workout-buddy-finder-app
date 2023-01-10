import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import '../../../core/core.dart';

import '../../domain/domain.dart';

@Injectable(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  @override
  Future<void> clearDislikes() async {
    final col = FirebaseFirestore.instance.collection(col_disliked_users);
    try {
      final snapShots = await col.get();
      for (QueryDocumentSnapshot doc in snapShots.docs) {
        await doc.reference.delete();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<void> clearLikes() async {
    final col = FirebaseFirestore.instance.collection(col_liked_users);
    try {
      final snapShots = await col.get();
      for (QueryDocumentSnapshot doc in snapShots.docs) {
        await doc.reference.delete();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<void> clearMessages() async {
    final col = FirebaseFirestore.instance.collection(col_messages);
    try {
      final snapShots = await col.get();
      for (QueryDocumentSnapshot doc in snapShots.docs) {
        await doc.reference.delete();
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
