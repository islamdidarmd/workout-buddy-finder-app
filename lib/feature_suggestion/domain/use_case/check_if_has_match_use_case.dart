import 'package:injectable/injectable.dart';

import 'check_if_liked_by_use_case.dart';

@injectable
class CheckIfHasMatchUseCase {
  final CheckIfLikedByUseCase checkIfLikedByUseCase;

  const CheckIfHasMatchUseCase({
    required this.checkIfLikedByUseCase,
  });

  Future<bool> call({
    required userId1,
    required String userId2,
  }) async {
    return await checkIfLikedByUseCase(
          userId: userId1,
          testLikedByUserId: userId2,
        ) &&
        await checkIfLikedByUseCase(
          userId: userId2,
          testLikedByUserId: userId1,
        );
  }
}
