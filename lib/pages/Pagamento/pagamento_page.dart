//import 'dart:html';

import 'package:banquete_do_monarca/pages/Login/login_page.dart';
import 'package:banquete_do_monarca/pages/Pagamento/obrigado.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher_string.dart';

import '../../components/background_geral.dart';
import '../../components/carrinho_view.dart';
import '../MenusLaterais/destaques_page.dart';

class PagamentoPage extends StatefulWidget {
  const PagamentoPage({Key? key}) : super(key: key);

  @override
  State<PagamentoPage> createState() => _PagamentoPageState();
}

class _PagamentoPageState extends State<PagamentoPage> {
  Future<void> irPagar(url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: LayoutBuilder(builder: (context, constraint) {
        return Stack(
          children: <Widget>[
            const BackgroundGeneral(),
            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 0.14,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 160, 155, 155),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const HomePage())),
                    icon: Icon(Icons.arrow_back,
                        size: MediaQuery.of(context).size.width * 0.03),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.38),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "Pagamento",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 36, 35, 35),
                          fontSize: MediaQuery.of(context).size.width * 0.1,
                          fontFamily: 'awesomeLathusca',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.25),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 247, 247, 247),
                        ),
                        child: Center(
                          child: FittedBox(
                            fit: BoxFit.fill,
                            child: Text(
                              "Escolha sua forma de pagamento",
                              style: TextStyle(
                                color: const Color.fromARGB(255, 36, 35, 35),
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.1,
                                fontFamily: 'awesomeLathusca',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        addPointsUser(pontosRecebidos, pontos);
                        irPagar('https://g1.globo.com//');
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ObrigadoPage()));
                      },
                      child: Image.asset(
                        "assets/imagens_pagamento/cartao.png",
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          addPointsUser(pontosRecebidos, pontos);
                          irPagar('https://www.globo.com/');
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ObrigadoPage()));
                        },
                        child: Image.asset(
                          "assets/imagens_pagamento/pix.png",
                          width: MediaQuery.of(context).size.width * 0.5,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      })),
    );
  }
}

Future addPointsUser(int pontosRecebidos, int pontosUser) async {
  pontosRecebidos = pontosRecebidos * -1;
  int novaPontuacao;
  novaPontuacao = pontosUser + pontosRecebidos;
  final db = FirebaseFirestore.instance;
  var colecao = db.collection('usuarios');
  await colecao.doc(cpfGeral).update({"pontos": novaPontuacao});
}
