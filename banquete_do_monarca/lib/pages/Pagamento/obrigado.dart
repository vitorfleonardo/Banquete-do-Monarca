//import 'dart:html';

import 'package:banquete_do_monarca/pages/Login/login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../components/background_geral.dart';
import '../../components/carrinho_view.dart';
import '../MenusLaterais/destaques_page.dart';

class ObrigadoPage extends StatefulWidget {
  const ObrigadoPage({Key? key}) : super(key: key);

  @override
  State<ObrigadoPage> createState() => _ObrigadoPageState();
}

class _ObrigadoPageState extends State<ObrigadoPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: LayoutBuilder(builder: (context, constraint) {
        return Stack(
          children: <Widget>[
            const BackgroundGeneral(),
            Container(
              child: Center(
                  child: Column(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: MediaQuery.of(context).size.height * 0.6,
                      margin: EdgeInsets.only(
                          //left: MediaQuery.of(context).size.width * 0.06,
                          top: MediaQuery.of(context).size.width * 0.09),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "Pagamento realizado com sucesso",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: MediaQuery.of(context).size.width * 0.1,
                              fontFamily: 'awesomeLathusca',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                ],
              )),
            ),
            Container(
                child: Center(
              child: Column(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.20,
                      height: MediaQuery.of(context).size.height * 0.20,
                      margin: EdgeInsets.only(
                          //left: MediaQuery.of(context).size.width * 0.5,
                          top: MediaQuery.of(context).size.width * 0.3),
                      child: Center(
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            "Volte sempre",
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: MediaQuery.of(context).size.width * 0.1,
                              fontFamily: 'awesomeLathusca',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            )),
            Column(children: [
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.82,
                  top: MediaQuery.of(context).size.width * 0.5,
                ),
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 51, 31, 4),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginPage()));
                  },
                  child: FittedBox(
                    child: Text('Sair',
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.07,
                        )),
                  ),
                ),
              )
            ]),
            Column(children: [
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.01,
                  top: MediaQuery.of(context).size.width * 0.5,
                ),
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height * 0.1,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 51, 31, 4),
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const HomePage()));
                  },
                  child: FittedBox(
                    child: Text('Voltar',
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.07,
                        )),
                  ),
                ),
              )
            ])
          ],
        );
      })),
    );
  }
}
