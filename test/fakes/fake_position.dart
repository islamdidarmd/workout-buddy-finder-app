import 'package:geolocator/geolocator.dart';

class FakePosition implements Position {
  @override
  // TODO: implement accuracy
  double get accuracy => throw UnimplementedError();

  @override
  // TODO: implement altitude
  double get altitude => throw UnimplementedError();

  @override
  // TODO: implement floor
  int? get floor => throw UnimplementedError();

  @override
  // TODO: implement heading
  double get heading => throw UnimplementedError();

  @override
  // TODO: implement isMocked
  bool get isMocked => throw UnimplementedError();

  @override
  // TODO: implement latitude
  double get latitude => throw UnimplementedError();

  @override
  // TODO: implement longitude
  double get longitude => throw UnimplementedError();

  @override
  // TODO: implement speed
  double get speed => throw UnimplementedError();

  @override
  // TODO: implement speedAccuracy
  double get speedAccuracy => throw UnimplementedError();

  @override
  // TODO: implement timestamp
  DateTime? get timestamp => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

}