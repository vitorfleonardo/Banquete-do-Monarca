//import 'dart:html';

import 'package:flutter/material.dart';

import '../../components/background_geral.dart';

class PagamentoPage extends StatefulWidget {
  const PagamentoPage({Key? key}) : super(key: key);

  @override
  State<PagamentoPage> createState() => _PagamentoPageState();
}

class _PagamentoPageState extends State<PagamentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraint) {
      return Stack(
        children: <Widget>[
          const BackgroundGeneral(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 1.0,
            height: MediaQuery.of(context).size.height * 0.14,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 160, 155, 155),
              ),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "Pagamento",
                    style: TextStyle(
                      color: Color.fromARGB(255, 36, 35, 35),
                      fontSize: 40,
                      fontFamily: 'awesomeLathusca',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.08,
                  left: MediaQuery.of(context).size.width * 0.25,
                ),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.1,
                child: const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 247, 247),
                  ),
                  child: Center(
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Text(
                        "Escolha sua forma de pagamento",
                        style: TextStyle(
                          color: Color.fromARGB(255, 36, 35, 35),
                          fontSize: 25,
                          fontFamily: 'awesomeLathusca',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.2),
                child: Center(
                    child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Image.asset(
                    "assets/imagens_pagamento/pix.png",
                  ),
                )),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.35),
                child: Center(
                    child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Image.asset(
                    "assets/imagens_pagamento/cartao.png",
                  ),
                )),
              ),
            ],
          ),
        ],
      );
    }));
  }
}
