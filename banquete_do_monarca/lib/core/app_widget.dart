import 'package:banquete_do_monarca/pages/Pagamento/obrigado.dart';
import 'package:banquete_do_monarca/repository/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../pages/Login/login_page.dart';

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
