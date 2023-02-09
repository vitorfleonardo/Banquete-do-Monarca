import 'package:banquete_do_monarca/pages/Login/login_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/bebidas_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/cardapio_page.dart';
import 'package:banquete_do_monarca/pages/MenusLaterais/mercado_page.dart';
import 'package:banquete_do_monarca/pages/Pagamento/pagamento_page.dart';
import 'package:banquete_do_monarca/repository/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:banquete_do_monarca/core/app_colors.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../pages/MenusLaterais/destaques_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MaterialApp(
        title: 'Banquete do Monarca',
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
