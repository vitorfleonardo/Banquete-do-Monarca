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
          return Stack(children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/background-madeira.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.start, 
            children: [
              Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.110,
                    left: MediaQuery.of(context).size.width * 0.100,
                  ),
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.89,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/imagens_mercado/background.png"),
                    fit: BoxFit.fill,
                  )),
                  child: Column(children: [
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.005,
                          left: MediaQuery.of(context).size.width * 0.05,
                        ),
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.225,
                        child: Image.asset(
                          "assets/imagens_mercado/balao-fala.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  GestureDetector(
                    child: Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.26,
                          right: MediaQuery.of(context).size.width * 0.64,
                        ),
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.4,
                        child: Image.asset(
                          "assets/imagens_mercado/mercador.png",
                          fit: BoxFit.fill,
                        ),
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
                        left: MediaQuery.of(context).size.height * 0.825,
                      ),
                      width: MediaQuery.of(context).size.width * 0.25,
                      height: MediaQuery.of(context).size.height * 0.150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage("assets/imagens_mercado/coca.png"),
                          fit: BoxFit.fill,
                        ),
                      )),
                GestureDetector(
                  child: Container(
                  //child: Padding(
                      //padding: const EdgeInsets.all(8.0),
                      //child: Container(
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.04,
                          left: MediaQuery.of(context).size.height * 0.825,
                        ),
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.20,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/imagens_mercado/batata.png"))))
                ),
                GestureDetector(
                  child: Container(                      
                        margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.005,
                          left: MediaQuery.of(context).size.height * 0.825,
                        ),
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/imagens_mercado/garrafinha.png"))))),        
              ],
            ),
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [MenuLateral()])
              ],
            )
          ]);
        },
      ),
    );
  }
}