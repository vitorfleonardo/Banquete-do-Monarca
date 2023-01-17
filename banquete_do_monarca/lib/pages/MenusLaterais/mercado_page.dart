import 'package:flutter/material.dart';

import '../../components/components.dart';

class MercadoPage extends StatefulWidget {
  const MercadoPage({Key? key}) : super(key: key);

  @override
  State<MercadoPage> createState() => _MercadoPageState();
}

class _MercadoPageState extends State<MercadoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background-madeira.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Row(
              children: [
                MenuLateral(),
              ],
            ),
          );
        },
      ),
    );
  }
}
