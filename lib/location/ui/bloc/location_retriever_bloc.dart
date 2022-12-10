import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'location_retriever_event.dart';

part 'location_retriever_state.dart';

@injectable
class LocationRetrieverBloc
    extends Bloc<LocationRetrieverEvent, LocationRetrieverState> {
  LocationRetrieverBloc() : super(LocationRetrieverInitialState()) {
    on<LocationRetrievePermissionEvent>(_onRetrievePermission);
    on<LocationRetrieveEvent>(_onRetrieveLocation);
  }

  Future<void> _onRetrievePermission(
    LocationRetrievePermissionEvent _,
    Emitter<LocationRetrieverState> emit,
  ) async {
    emit(LocationRetrieverLoadingState());
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.denied) {
      emit(LocationPermissionDeniedState());
    } else if (permission == LocationPermission.deniedForever) {
      emit(LocationPermissionDeniedForEverState());
    } else {
      emit(LocationPermissionGrantedState());
    }
  }

  Future<void> _onRetrieveLocation(
    LocationRetrieveEvent _,
    Emitter<LocationRetrieverState> emit,
  ) async {
    emit(LocationRetrieverLoadingState());
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      emit(LocationServiceDisabledState());

      return;
    }

    final location = await Geolocator.getCurrentPosition();
    emit(LocationRetrievedState(location: location));
  }
}
