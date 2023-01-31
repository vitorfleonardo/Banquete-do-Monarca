import 'package:flutter/material.dart';

Container botaoAdicionar(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.15,
    height: MediaQuery.of(context).size.height * 0.9,
    decoration: const BoxDecoration(
      color: Color.fromARGB(255, 255, 0, 0),
    ),
    child: const FittedBox(
      child: Text(
        "Adicionar",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'awesomeLathusca'),
        maxLines: 1,
      ),
    ),
  );
}
