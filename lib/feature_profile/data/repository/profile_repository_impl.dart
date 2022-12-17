import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:either_dart/src/either.dart';
import 'package:injectable/injectable.dart';
import '../../../core/error/app_error.dart';
import '../model/model.dart';
import 'profile_repository.dart';

@Injectable(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  @override
  Future<Either<List<InterestModel>, AppError>> getInterestList() async {
    final collection =
        await FirebaseFirestore.instance.collection('interests').get();
    try {
      final interestList = collection.docs
          .map((doc) => InterestModel.fromJson(doc.data()))
          .toList(growable: false);

      return Left(interestList);
    } catch (e) {
      return Right(InvalidDataError());
    }
  }
}
