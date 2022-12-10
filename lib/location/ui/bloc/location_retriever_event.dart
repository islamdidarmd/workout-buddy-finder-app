part of 'location_retriever_bloc.dart';

abstract class LocationRetrieverEvent extends Equatable {
  @override
  List<Object?> get props => [];

  const LocationRetrieverEvent();
}

class LocationRetrievePermissionEvent extends LocationRetrieverEvent {}

class LocationRetrieveEvent extends LocationRetrieverEvent {}
