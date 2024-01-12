import 'package:flutter/material.dart';

Container backgroundmercado(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.11,
      left: MediaQuery.of(context).size.width * 0.100,
    ),
    width: MediaQuery.of(context).size.width * 0.95,
    height: MediaQuery.of(context).size.height * 0.815,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/imagens_mercado/background.png"),
        fit: BoxFit.fill,
      ),
    ),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.006,
            right: MediaQuery.of(context).size.width * 0.1,
          ),
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.225,
          child: Image.asset(
            "assets/imagens_mercado/balao-fala.png",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.00001,
            right: MediaQuery.of(context).size.width * 0.54,
          ),
          width: MediaQuery.of(context).size.width * 0.38,
          height: MediaQuery.of(context).size.height * 0.583,
          child: Image.asset(
            "assets/imagens_mercado/mercador.png",
            fit: BoxFit.fill,
          ),
        ),
      ],
    ),
  );
}
