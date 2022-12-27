//import 'dart:html';
import 'package:flutter/material.dart';

import '../../components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          // var largura = constraint.maxWidth;
          // var comprimento = constraint.maxHeight;

          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background-madeira.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: MenuLateral(),
          );
        },
      ),
    );
  }
}
