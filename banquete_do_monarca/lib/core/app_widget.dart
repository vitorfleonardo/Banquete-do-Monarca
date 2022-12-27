import 'package:banquete_do_monarca/pages/Login/login_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/bebidas_page.dart';
import 'package:flutter/material.dart';
import 'package:banquete_do_monarca/core/app_colors.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banquete do Monarca',
      theme: ThemeData(
        primaryColor: AppColors.primary,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: AppColors.secondary),
      ),
      home: const LoginPage(),
    );
  }
}
