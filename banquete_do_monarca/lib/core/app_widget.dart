import 'package:flutter/material.dart';
import 'package:banquete_do_monarca/core/app_colors.dart';
import 'package:banquete_do_monarca/pages/Login/login_page.dart';
import 'package:banquete_do_monarca/pages/Home/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banquete do Monarca',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        accentColor: AppColors.secondary,
      ),
      home: LoginPage(),
    );
  }
}
