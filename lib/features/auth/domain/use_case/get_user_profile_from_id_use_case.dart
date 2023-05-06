import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/firestore_constants.dart';
import '../../../../core/model/models.dart';

@injectable
class GetUserProfileFromIdUseCase {
  final FirebaseFirestore firestore;

  const GetUserProfileFromIdUseCase(this.firestore);

  Future<AppUser?> execute({required String uid}) async {
    final userProfileQuery = firestore
        .collection(col_users)
        .doc(uid)
        .withConverter(
          fromFirestore: (snapshot, _) => AppUser.fromJson(snapshot.data()!),
          toFirestore: (value, _) => value.toJson(),
        );

    final profileSnapshot = await userProfileQuery.get();

    return profileSnapshot.data();
  }
}
