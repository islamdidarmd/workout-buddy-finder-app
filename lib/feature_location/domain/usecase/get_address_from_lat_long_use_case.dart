import 'package:either_dart/either.dart';
import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_buddy_finder/core/core.dart';

@injectable
class GetAddressFromLatLongUseCase {
  Future<Either<String, AppError>> call(double lat, double long) async {
    try {
      List<Placemark> placeMarkList = await placemarkFromCoordinates(lat, long);
      if (placeMarkList.isEmpty) {
        return const Right(DataNotFoundError());
      }
      final buffer = StringBuffer();

      if (placeMarkList.first.locality?.isNotEmpty == true) {
        buffer
          ..write(placeMarkList.first.locality)
          ..write(", ");
      }

      buffer
        .write(
          placeMarkList.first.country,
        );

      return Left(buffer.toString());
    } catch (e) {
      return const Right(UnknownError());
    }
  }
}
