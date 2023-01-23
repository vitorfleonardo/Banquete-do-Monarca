import 'package:banquete_do_monarca/core/app_widget.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());

  await Firebase.initializeApp();

  FirebaseFirestore.instace
      .collection('consumidor')
      .doc()
      .set({'cpf': '06706767131', 'points': '100'});
}
