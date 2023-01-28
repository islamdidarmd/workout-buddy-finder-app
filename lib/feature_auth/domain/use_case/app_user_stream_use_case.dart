import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../core/firestore_constants.dart';
import '../../../core/model/models.dart';


@injectable
class AppUserStreamUseCase {
  Stream<AppUser> call() {
    final firebaseUser = FirebaseAuth.instance.currentUser;
    final _userProfileQuery = FirebaseFirestore.instance
        .collection(col_users)
        .doc(firebaseUser?.uid)
        .withConverter(
          fromFirestore: (snapshot, _) => AppUser.fromJson(snapshot.data()!),
          toFirestore: (value, _) => value.toJson(),
        );

    return _userProfileQuery.snapshots().map((event) => event.data()!);
  }
}
