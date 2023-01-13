import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';
import '../../../feature_location/domain/domain.dart';

import '../../error/app_error.dart';
import '../../../di/service_locator.dart';

class LocationText extends StatefulWidget {
  const LocationText({
    Key? key,
    required this.lat,
    required this.long,
  }) : super(key: key);

  final double lat;
  final double long;

  @override
  State<LocationText> createState() => _LocationTextState();
}

class _LocationTextState extends State<LocationText> {
  final GetAddressFromLatLongUseCase getAddressFromLatLongUseCase = sl();
  late Future<Either<String, AppError>> addressFuture;

  @override
  void initState() {
    super.initState();
    addressFuture = getAddressFromLatLongUseCase(
      widget.lat,
      widget.long,
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      child: FutureBuilder(
        future: addressFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('Fetching location...', style: textTheme.caption);
          } else if (snapshot.hasData) {
            final address =
                snapshot.requireData.fold((address) => address, (right) => "");

            return Text(address, style: textTheme.caption);
          }

          return const SizedBox();
        },
      ),
    );
  }
}
