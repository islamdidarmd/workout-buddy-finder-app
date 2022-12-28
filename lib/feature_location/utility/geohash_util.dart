import 'package:dart_geohash/dart_geohash.dart';

String getGeoHash({required double latitude, required double longitude}) {
  return GeoHash.fromDecimalDegrees(longitude, latitude).geohash;
}