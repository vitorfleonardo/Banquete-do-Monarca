//import 'dart:html';

import 'package:banquete_do_monarca/repository/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/background_geral.dart';
import '../../components/barra_de_destaques.dart';

import '../../components/carrinho_view.dart';
import 'package:banquete_do_monarca/core/app_lists.dart';

import '../../components/menu_lateral.dart';
import '../../core/app_colors.dart';

class PagamentoPage extends StatefulWidget {
  const PagamentoPage({Key? key}) : super(key: key);

  @override
  State<PagamentoPage> createState() => _PagamentoPageState();
}

class _PagamentoPageState extends State<PagamentoPage> {
  void costomLaunch(url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      print("Não pode executar o link $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (context, constraint) {
      return Stack(
        children: <Widget>[
          const BackgroundGeneral(),
          Container(
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
                  child: Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.09,
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
                          fontSize: 30,
                          fontFamily: 'awesomeLathusca',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  costomLaunch('https://www.globo.com/');
                },
                child: Image.asset(
                  "assets/imagens_pagamento/cartao.png",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  costomLaunch('https://www.globo.com/');
                },
                child: Image.asset(
                  "assets/imagens_pagamento/pix.png",
                ),
              )
            ],
          )
        ],
      );
    }));
  }
}
