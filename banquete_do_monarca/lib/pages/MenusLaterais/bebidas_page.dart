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
          return Stack(
            children: <Widget>[
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
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [MenuLateral()])
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.125,
                        left: MediaQuery.of(context).size.height * 0.400,
                      ),
                      width: MediaQuery.of(context).size.width * 0.75,
                      height: MediaQuery.of(context).size.height * 0.50,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/imagens_bebidas/bebida_1.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Row(children: [
                        GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.27,
                              left: MediaQuery.of(context).size.width * 0.52,
                            ),
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: Image.asset(
                              "assets/imagens_cardapio/11.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    GestureDetector(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.400,
                        ),
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: MediaQuery.of(context).size.height * 0.50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/imagens_bebidas/bebida_2.png"))),
                        child: Row(children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.27,
                                left: MediaQuery.of(context).size.width * 0.52,
                              ),
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: Image.asset(
                                "assets/imagens_cardapio/11.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )),
                    GestureDetector(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(
                          left: MediaQuery.of(context).size.height * 0.400,
                        ),
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: MediaQuery.of(context).size.height * 0.50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/imagens_bebidas/bebida_3.png"))),
                        child: Row(children: [
                          GestureDetector(
                            child: Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.27,
                                left: MediaQuery.of(context).size.width * 0.52,
                              ),
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.2,
                              child: Image.asset(
                                "assets/imagens_cardapio/11.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
