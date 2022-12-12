import 'package:either_dart/either.dart';
import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/core/core.dart';

@injectable
class GetAddressFromLatLongUseCase {
  Future<Either<String, AppError>> call(double lat, double long) async {
    List<Placemark> placeMarkList = await placemarkFromCoordinates(lat, long);
    if (placeMarkList.isEmpty) {
      return Right(DataNotLoggedInError());
    }
    final buffer = StringBuffer()
      ..write(placeMarkList.first.locality)
      ..write(", ")
      ..write(placeMarkList.first.country);

    return Left(buffer.toString());
  }
}
