import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'service_locator.config.dart';

final GetIt sl = GetIt.instance;

@InjectableInit(initializerName: 'initGetIt', preferRelativeImports: true)
GetIt configureDependencies() => sl.initGetIt();
