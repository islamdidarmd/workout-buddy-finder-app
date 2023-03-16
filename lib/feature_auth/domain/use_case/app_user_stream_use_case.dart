import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../../core/firestore_constants.dart';
import '../../../core/model/models.dart';

@injectable
class AppUserStreamUseCase {
  final FirebaseFirestore firestore;
  final FirebaseAuth firebaseAuth;

  const AppUserStreamUseCase(this.firestore, this.firebaseAuth);

  Stream<AppUser> execute() {
    final firebaseUser = firebaseAuth.currentUser;
    final userProfileQuery = firestore
        .collection(col_users)
        .doc(firebaseUser?.uid)
        .withConverter(
          fromFirestore: (snapshot, _) => AppUser.fromJson(snapshot.data()!),
          toFirestore: (value, _) => value.toJson(),
        );

    return userProfileQuery.snapshots().map((event) => event.data()!);
  }
}
