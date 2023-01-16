import 'package:flutter/material.dart';

import '../../components/components.dart';

class BebidasPage extends StatefulWidget {
  const BebidasPage({Key? key}) : super(key: key);

  @override
  State<BebidasPage> createState() => _BebidasPageState();
}

class _BebidasPageState extends State<BebidasPage> {
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
