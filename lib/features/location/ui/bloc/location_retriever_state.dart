part of 'location_retriever_bloc.dart';

abstract class LocationRetrieverState extends Equatable {
  @override
  List<Object> get props => [];

  const LocationRetrieverState();
}

class LocationRetrieverInitialState extends LocationRetrieverState {}

class LocationRetrieverLoadingState extends LocationRetrieverState {}

class LocationPermissionDeniedState extends LocationRetrieverState {}

class LocationPermissionDeniedForEverState extends LocationRetrieverState {}

class LocationPermissionGrantedState extends LocationRetrieverState {}

class LocationServiceDisabledState extends LocationRetrieverState {}

class LocationRetrievedState extends LocationRetrieverState {
  final Position location;

  @override
  List<Object> get props => [location];

  const LocationRetrievedState({
    required this.location,
  });
}
