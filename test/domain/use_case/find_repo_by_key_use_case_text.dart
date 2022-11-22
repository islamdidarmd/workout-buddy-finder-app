import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

final testSl = GetIt.instance;
void main(){
  void setUpTestDependencies(){
    testSl.registerLazySingleton<Dio>(() => Dio());
  }

  setUp((){
    setUpTestDependencies();
  });
}