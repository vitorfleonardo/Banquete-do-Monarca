import 'package:flutter/material.dart';

class TrocaMercado extends StatelessWidget {
  void Function()? onPressed;
  TrocaMercado({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.2,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/imagens_mercado/troca.png"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
