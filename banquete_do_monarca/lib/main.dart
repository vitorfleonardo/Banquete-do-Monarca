import 'package:banquete_do_monarca/core/app_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  runApp(const MyApp());
<<<<<<< HEAD
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseFirestore.instance
  .collection("cliente")
  .doc()
  .set({'cpf': '056.809.411.58', 'pontos': '170'});
=======
>>>>>>> 9c4b5c829fb4b6c3852b965ecc0e8817b30b46e0
}

