import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:workout_buddy_finder/di/service_locator.dart';

import 'bloc/location_retriever_bloc.dart';

class LocationRetrieverDialog extends StatelessWidget {
  const LocationRetrieverDialog({Key? key}) : super(key: key);

  void _onLocationRetrieverBlocStateChange(
    BuildContext context,
    LocationRetrieverState state,
  ) async {
    if (state is LocationServiceDisabledState) {
      final result = await Geolocator.openLocationSettings();
    } else if (state is LocationPermissionGrantedState) {
      context.read<LocationRetrieverBloc>().add(LocationRetrieveEvent());
    } else if (state is LocationRetrievedState) {
      Navigator.of(context).pop(state.location);
    }
  }

  // We are handling multiple types here so dynamic is more suitable
  // ignore: avoid-dynamic
  Widget _buildUiForState(BuildContext _, LocationRetrieverState state) {
    if (state is LocationPermissionDeniedState) {
      return Text(
        'We need your location to continue. Please allow location permission',
      );
    } else if (state is LocationPermissionDeniedForEverState) {
      return Text(
        'We need your location to continue. Please allow location permission from Device Settings',
      );
    } else if (state is LocationServiceDisabledState) {
      return Text(
        'We need your location to continue. Please enable Location Services',
      );
    }

    return Text(
      'Please wait while we retrieve your location',
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocationRetrieverBloc>(
      create: (_) => sl()..add(LocationRetrievePermissionEvent()),
      child: BlocConsumer<LocationRetrieverBloc, LocationRetrieverState>(
        listener: _onLocationRetrieverBlocStateChange,
        builder: _buildUiForState,
      ),
    );
  }
}
