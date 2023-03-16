import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

@module
abstract class FirebaseModule {
  GoogleSignIn get googleSignIn => GoogleSignIn();
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;
}