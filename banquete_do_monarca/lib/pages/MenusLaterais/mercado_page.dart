import 'package:banquete_do_monarca/components/background_geral.dart';
import 'package:banquete_do_monarca/components/carrinho_view.dart';
import 'package:flutter/material.dart';

import '../../components/menu_lateral.dart';
import '../../core/app_colors.dart';
import '../Login/login_page.dart';

class MercadoPage extends StatefulWidget {
  const MercadoPage({Key? key}) : super(key: key);

  @override
  State<MercadoPage> createState() => _MercadoPageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
void _openEndDrawer() {
  _scaffoldKey.currentState!.openEndDrawer();
}

class _MercadoPageState extends State<MercadoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const Carrinho(),
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Stack(
            children: <Widget>[
              const BackgroundGeneral(),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.110,
                      left: MediaQuery.of(context).size.width * 0.100,
                    ),
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height * 0.89,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                      image:
                          AssetImage("assets/imagens_mercado/background.png"),
                      fit: BoxFit.fill,
                    )),
                    child: Column(children: [
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
                          top: MediaQuery.of(context).size.height * 0.009,
                          right: MediaQuery.of(context).size.width * 0.54,
                        ),
                        width: MediaQuery.of(context).size.width * 0.38,
                        height: MediaQuery.of(context).size.height * 0.65,
                        child: Image.asset(
                          "assets/imagens_mercado/mercador.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ]))
              ]),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.35,
                        left: MediaQuery.of(context).size.height * 0.975,
                      ),
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/imagens_mercado/coca.png"),
                          fit: BoxFit.fill,
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.04,
                        left: MediaQuery.of(context).size.height * 0.975,
                      ),
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.20,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/imagens_mercado/batata.png")))),
                  Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.005,
                        left: MediaQuery.of(context).size.height * 0.975,
                      ),
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.25,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/imagens_mercado/garrafinha.png")))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(children: [
                    GestureDetector(
                        child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.32,
                        left: MediaQuery.of(context).size.height * 1.35,
                      ),
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/imagens_mercado/troca.png"),
                        fit: BoxFit.fill,
                      )),
                    )),
                    GestureDetector(
                        child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.height * 1.35,
                      ),
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/imagens_mercado/troca.png"),
                        fit: BoxFit.fill,
                      )),
                    )),
                    GestureDetector(
                        child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02,
                        left: MediaQuery.of(context).size.height * 1.35,
                      ),
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/imagens_mercado/troca.png"),
                        fit: BoxFit.fill,
                      )),
                    )),
                  ])
                ],
              ),
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [MenuLateral()])
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.13,
                    height: MediaQuery.of(context).size.height * 0.11,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Center(
                      child: Text(
                        '$pontos pontos',
                        style: TextStyle(
                            fontFamily: 'awesomeLathusca',
                            fontWeight: FontWeight.bold,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.03),
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        height: MediaQuery.of(context).size.height * 0.11,
                        decoration: const BoxDecoration(
                          color: AppColors.secondary,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FittedBox(
                            child: Text(
                              "Meus Pedidos",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'awesomeLathusca'),
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ),
                      onTap: () => _openEndDrawer(),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
